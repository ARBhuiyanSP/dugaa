<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="csrf-token" content="{{ csrf_token() }}" />
  <title>@yield('title')</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{asset('plugins/fontawesome-free/css/all.min.css')}}">
  <!-- IonIcons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="{{asset('backend/datatable/jquery.dataTables.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/summernote/summernote-bs4.min.css')}}">
 <!--  <link rel="stylesheet" href="{{asset('plugins/summernote/jquery.dataTables.min.css')}}"> -->
  <link rel="stylesheet" href="{{asset('backend/style.css')}}">


  @yield('css')
  <style type="text/css">
    .submit-button{
      min-width: 150px;
    }
  </style>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  @include('backend.layouts.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  @include('backend.layouts.main_sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    

    <!-- Main content -->
    @yield('content')
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  @include('backend.layouts.footer')
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="{{asset('plugins/jquery/jquery.min.js')}}"></script>
<script src="{{asset('plugins/jquery/jquery-ui.min.js')}}" ></script>
<!-- Bootstrap -->
<script src="{{asset('plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('backend/datatable/jquery.dataTables.min.js')}}"></script>
<!-- AdminLTE -->
<script src="{{asset('dist/js/adminlte.js')}}"></script>

<!-- OPTIONAL SCRIPTS -->



<!-- Summernote -->
<script src="{{asset('plugins/summernote/summernote-bs4.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('dist/js/demo.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->

@yield('script')
<script>
  var loadFile = function(event,_id) {
    var ids = `output_${_id}`;
    var output = document.getElementById('output_'+_id);
    output.src = URL.createObjectURL(event.target.files[0]);
    console.log(event.target.files[0])
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };

  $(function () {
    // Summernote
    $('.summernote').summernote()


  })
$(document).ready(function () {
    $('#example').DataTable();
    
     setTimeout(function() {
    
      if (typeof nav_idtem_id === 'undefined') {
 
      }else{
          console.log(nav_idtem_id)
         $(nav_idtem_id).addClass("menu-is-opening menu-open").addClass("active");
      }
    // Code to execute after 2 seconds
    //$(nav_idtem_id).css({"background":"#ffffffe6"});
   
  }, 500);  
});

$("._account_head_id").on('change',function(){
  var _account_head_id = $(this).val();
  var request = $.ajax({
      url: "{{url('type_base_group')}}",
      method: "GET",
      data: { id : _account_head_id },
      dataType: "html"
    });
     
    request.done(function( msg ) {
      $( "._account_groups" ).html( msg );
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

})


function _voucher_total_calculation(){
    var _total_dr_amount = 0;
    var _total_cr_amount = 0;
      $(document).find("._cr_amount").each(function() {
          _total_cr_amount +=parseFloat($(this).val());
      });
      $(document).find("._dr_amount").each(function() {
          _total_dr_amount +=parseFloat($(this).val());
      });
      $("._total_dr_amount").val(_math_round(_total_dr_amount));
      $("._total_cr_amount").val(_math_round(_total_cr_amount));
  }

  $(document).on('keyup','._search_ledger_id',delay(function(e){
    $(document).find('._search_ledger_id').removeClass('required_border');
  var _gloabal_this = $(this);
  var _text_val = $(this).val().trim();
  var _head_no = $(this).attr('attr_account_head_no');
  if(isNaN(_head_no)){ _head_no=0 }
    console.log("_text_val "+_text_val)
    console.log("_head_no "+_head_no)
  var request = $.ajax({
      url: "{{url('ledger-search')}}",
      method: "GET",
      data: { _text_val,_head_no },
      dataType: "JSON"
    });
     
    request.done(function( result ) {
      var search_html =``;
      var data = result.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 300px;"> <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row" >
                                        <td>${data[i].id}
                                        <input type="hidden" name="_id_ledger" class="_id_ledger" value="${data[i].id}">
                                        </td><td>${data[i]._name}
                                        <input type="hidden" name="_name_leder" class="_name_leder" value="${data[i]._name}">
                                        <input type="hidden" name="_s_l_address" class="_s_l_address" value="${data[i]._address}">
                                        <input type="hidden" name="_s_l_phone" class="_s_l_phone" value="${data[i]._phone}">
                                        </td>
                                        <td>${data[i]._balance}</td>
                                        </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      _gloabal_this.parent('td').find('.search_box').html(search_html);
      _gloabal_this.parent('td').find('.search_box').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

  

}, 500));


$(document).on('click','.search_row',function(){
  var _id = $(this).children('td').find('._id_ledger').val();
  var _name = $(this).find('._name_leder').val();
  $(this).parent().parent().parent().parent().parent().parent().find('._ledger_id').val(_id);
  var _id_name = `${_name} `;
  $(this).parent().parent().parent().parent().parent().parent().find('._search_ledger_id').val(_id_name);


  $('.search_box').hide();
  $('.search_box').removeClass('search_box_show').hide();
})

function delay(callback, ms) {
  var timer = 0;
  return function() {
    var context = this, args = arguments;
    clearTimeout(timer);
    timer = setTimeout(function () {
      callback.apply(context, args);
    }, ms || 0);
  };
}

$(document).on('keyup','._dr_amount',function(){
    $(this).parent().parent('tr').find('._cr_amount').val(0);
    $(document).find("._total_dr_amount").removeClass('required_border');
    $(document).find("._total_cr_amount").removeClass('required_border');
    _voucher_total_calculation();
  })



  $(document).on('keyup','._cr_amount',function(){
     $(this).parent().parent('tr').find('._dr_amount').val(0);
     $(document).find("._total_dr_amount").removeClass('required_border');
      $(document).find("._total_cr_amount").removeClass('required_border');
    _voucher_total_calculation();
  })


  function _math_round(_amount,_param=1){
    return Math.round(_amount);
      
  }
  $(document).on('click',"input[type='number']",function(){
        $(this).select();
    })


  $(document).on('click','._save_and_print',function(){
    $(document).find('._save_and_print_value').val(1);
  })



function _common_click_function(){

    var searach_show= $('.search_box_item').hasClass('search_box_show');
    var search_box_main_ledger= $('.search_box_main_ledger').hasClass('search_box_show');
    var search_box_delivery_man= $('.search_box_delivery_man').hasClass('search_box_show');
    var search_box_sales_man= $('.search_box_sales_man').hasClass('search_box_show');
    var search_box_purchase_order = $('.search_box_purchase_order').hasClass('search_box_show');
    var search_box= $('.search_box').hasClass('search_box_show');
    if(searach_show ==true){
      $('.search_box_item').removeClass('search_box_show').hide();
    }

    if(search_box ==true){
      $('.search_box').removeClass('search_box_show').hide();
    }
  

    
}

$(document).on('click',function(){
    _common_click_function();
})
 function printDiv(divID) {
            var divElements = document.getElementById(divID).innerHTML;
            var oldPage = document.body.innerHTML;
            document.body.innerHTML ="<html><head><title></title></head><body>" +
                divElements + "</body>";
            window.print();
            document.body.innerHTML = oldPage;
           // location.reload();
        }
     function fnExcelReport() {
      var tab_text= $("#printablediv").html();
      var ua = window.navigator.userAgent;
      var msie = ua.indexOf("MSIE "); 
      if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
      {
        document.open("txt/html","replace");
        document.write(tab_text);
        document.close(); 
        sa=document.execCommand("SaveAs",true,"Say Thanks to Sumit.xls");
      }  
      else                 //other browser not tested on IE 11
        sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  

      return (sa);
    } 

        function _lock_action(_id,_action,_table_name){
       $.ajaxSetup({headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')} });
        $.ajax({
           type:'POST',
           url:"{{ url('_lock_action') }}",
           data:{_id,_action,_table_name},
           success:function(data){
              console.log(data);
           }
        });
    }

</script>
</body>
</html>
