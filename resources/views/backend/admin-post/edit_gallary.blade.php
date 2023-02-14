@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<style type="text/css">
  .banner_image_create{
    max-height: 100px;
    max-width: 100px;
    margin-top: 10px;
    margin-bottom:  10px;
    padding: 5px;
  }

  .vedio_section{
    display: none;
  }
  .display_bock{
    display: block;
  }
  .display_hide{
    display: none;
  }

</style>
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{!! $page_name ?? ''  !!} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              @can('admin-post-list')
              <li class="breadcrumb-item active">
                 <a class="btn btn-sm btn-primary" href="{{ url('admin-post') }}/{{$slug_detail->slug}}"> {{$page_name ?? '' }}</a>
               </li>
               @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
     @include('backend.common.message')
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             
              <div class="card-body">
                {!! Form::open(array('route' => 'admin-post.store','method'=>'POST','enctype'=>'multipart/form-data')) !!}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <input type="hidden" name="menu_id" value="{{$slug_detail->id}}">
                                <input type="hidden" name="menu_slug" value="{{$slug_detail->slug}}">
                               
                               <input type="hidden" name="form_name" value="gallary">
                               <input type="hidden" name="id" value="{{$data->id ?? 0}}">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Title:</strong>
                                <input type="text" name="post_title" 
                                    class="form-control" required="true" 
                                    value="{{$data->post_title ?? '' }}" 
                                    placeholder="Title">
                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Sub Title:</strong>
                                <input type="text" name="post_subtitle" 
                                    class="form-control" 
                                    value="{{$data->post_subtitle ?? '' }}" 
                                    placeholder="Sub Title">
                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                            <strong>Status:</strong>
                            <select class="form-control" name="status">
                              @forelse(status() as $key=>$val)
                              <option value="{{$key}}" @if($data->status==$key) selected @endif >{{$val ?? '' }}</option>
                              @empty
                              @endforelse
                            </select>
                        </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                            <strong>Possition:</strong>
                            <input type="text" name="position" class="form-control" placeholder="Possition" value="{{$data->position ?? 1}}">
                            
                        </div>
                        </div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-12 ">
                            
                          <div class="row _image_tbody">
                                @forelse($image_details as $main_key=>$main_val)
                                <div class="col-md-6">
                                <div class="card">
                                  <table class="table">
                              
                              <tbody>
                                <tr>
                                      <td style="width: 100%;">
                                        <input class="is_vedio" type="checkbox" id="is_vedio__{{($main_key+1)}}" name="is_vedio_{{($main_key+1)}}" value="1" @if($main_val->is_video==1) checked @endif >
                                        <input type="hidden" name="_gallary_image_id_{{($main_key+1)}}" value="{{$main_val->id}}">
                                          <label for="is_vedio__{{($main_key+1)}}"> Is video</label><br>
                                          <div class="image_section @if($main_val->is_video==1) display_hide @endif " style="width: 100%;" >
                                            <div style="display:flex; ">
                                               <input type="hidden" name="image_table_id" value="0" />

                                              <input  type="file" accept="image/*" onchange="loadFile(event,{{($main_key+1)}} )"  name="_gallary_image_{{($main_key+1)}}" class="form-control _gallary_image">
                                            
                                              <a  target="__blank" href="{{asset('/')}}/{{$main_val->image ?? '' }}">
                                                <img id="output_{{($main_key+1)}}"  class="banner_image_create"  src="{{asset('/')}}/{{$main_val->image ?? '' }}"/>
                                              </a>
                                            </div>
                                   
                                          </div>
                                          <div class="vedio_section @if($main_val->is_video==1) display_bock @endif"  >
                                            <input class="form-control gallary_vedio_link" type="text" name="gallary_vedio_link_{{($main_key+1)}}" placeholder="Video Link" value="{{$main_val->vedio_link ?? '' }}">
                                          </div>
                                          <br>
                                          <div class="title_sub_title">
                                            <strong>Title:</strong>
                                            <input type="text" name="_gallary_post_title_{{($main_key+1)}}" class="form-control _gallary_post_title" value="{{$main_val->title ?? '' }}" placeholder="Title"><br>
                                            <strong>Sub Title:</strong>
                                        <input type="text" name="_gallary_post_sub_title_{{($main_key+1)}}" value="{{$main_val->sub_title ?? '' }}" placeholder="Sub Title" class="form-control _gallary_post_sub_title">
                                          </div>

                                          <div>

                                            <input type="checkbox" id="_gallary_is_dawnloadable__{{($main_key+1)}}" name="_gallary_is_dawnloadable_{{($main_key+1)}}"
                                            @if($main_val->is_dawnloadable==1) checked @endif
                                             value="1">
                                          <label for="_gallary_is_dawnloadable_{{($main_key+1)}}"> Is Downloadable</label><br>
                                        </div>
                                        <div>
                                            
                                        </div>
                                        <div class="row">
                                          <div class="col-md-4">
                                              <div class="form-group">
                                              <strong>Status:</strong>
                                                <select class="form-control" name="_gallary_status_{{($main_key+1)}}">
                                                  @forelse(status() as $key=>$val)
                                                  <option value="{{$key}}" @if($key==$main_val->status) selected @endif >{{$val ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                            </div>
                                          </div>
                                          <div class="col-md-4">
                                              <div class="form-group">
                                              <strong>Cloumn Size:</strong>
                                              <select class="form-control" name="_gallary_dis_cloumn_{{($main_key+1)}}">
                                                @forelse( cloumn_size() as $key=>$val)
                                                <option value="{{$key}}" @if($key==$main_val->_dis_cloumn) selected @endif  >{{$val ?? '' }}</option>
                                                @empty
                                                @endforelse
                                              </select>
                                          </div>
                                          </div>

                                          <div class="col-md-4">
                                              <div class="form-group">
                                                  <strong>Possition:</strong>
                                                    <input type="text" name="_gallary_serial_{{($main_key+1)}}" class="form-control _gallary_serial" placeholder="Possition" value="{{$main_val->serial ?? 1 }}">
                                                </div>
                                          </div>
                                          
                                        </div>
                                      </td>
                                      <td>
                                        <a href="#none" class="btn btn-default _image_row_remove" attr_counter_number="{{($main_key+1)}}"
                                        attr_detail_id="{{$main_val->id}}" ><i class="fa fa-trash"></i></a>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                                    @empty
                                    @endforelse
                            </div>
                      </div>
                      <div class="col-md-12">
                        <a href="#none" class="btn btn-default btn-sm" onclick="_image_added_row(event)"><i class="fa fa-plus"></i></a>
                      </div>

<input type="hidden" name="counter_row" class="counter_row" id="counter_row" value="{{sizeof($image_details)}}">
<input type="hidden" name="counter_row_array" class="counter_row" id="counter_row_array" value="1">
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                
              </div>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
</div>

@endsection

@section('script')

<script type="text/javascript">
  counter_function()
function counter_function(){
  var counters_row=[];
  $('._image_row_remove').each(function() {
     var counter_id = $(this).attr("attr_counter_number");
     counters_row.push(counter_id);
  })
  $(document).find("#counter_row_array").val(counters_row);
  //$(document).find("#counter_row").val(counters_row.length);
    console.log(counters_row)
}
  

   function _image_added_row(event){
  var row_number = $("#counter_row").val();

  row_number = parseFloat(row_number)
    row_number +=1;
    var row =`<div class="col-md-6"><div class="card">
      <table class="table">
    <tr>
            <td>

            <div class="form-group">
            <input type="hidden" name="_gallary_image_id_${row_number}" value="0">
              <input class="is_vedio" type="checkbox" id="is_vedio__${row_number}" name="is_vedio_${row_number}" value="1">
                <label for="is_vedio__${row_number}"> Is video</label><br>
                <div class="image_section">
                   <input type="hidden" name="image_table_id" value="0" />
                    <input type="file" accept="image/*" onchange="loadFile(event,${row_number} )"  name="_gallary_image_${row_number}" class="form-control _gallary_image">
                  
                    <br>
                    <img id="output_${row_number}"  class="banner_image_create"  src="" />
                    <hr>
                </div>
          </div>
          <div class="form-group">
                <div class="vedio_section">
                 <strong>Video Link:</strong>
                  <input class="form-control gallary_vedio_link" type="text" name="gallary_vedio_link_${row_number}" placeholder="Video Link">
                </div>
          </div>
          <div class="form-group">
                <strong>Title:</strong>
                <input type="text" name="_gallary_post_title_${row_number}" class="form-control _gallary_post_title" placeholder="Title">
          </div>
          <div class="form-group">
                <strong>Sub Title:</strong>
              <input type="text" name="_gallary_post_sub_title_${row_number}" placeholder="Sub Title" class="form-control _gallary_post_sub_title">
          </div>
              <div class="row">
                <div class="col-md-12">
                      <input type="checkbox" id="_gallary_is_dawnloadable__${row_number}" name="_gallary_is_dawnloadable_${row_number}" value="1">
                    <label for="_gallary_is_dawnloadable"> Is Downloadable</label><br>
                </div>
                <div class="col-md-4">
                      <div class="form-group">
                          <strong>Status:</strong>
                          <select class="form-control" name="_gallary_status_${row_number}">
                            @forelse(status() as $key=>$val)
                            <option value="{{$key}}">{{$val ?? '' }}</option>
                            @empty
                            @endforelse
                          </select>
                      </div>
                </div>
                <div class="col-md-4">
                      <div class="form-group">
                        <strong>Cloumn Size:</strong>
                        <select class="form-control" name="_gallary_dis_cloumn_${row_number}">
                          @forelse( cloumn_size() as $key=>$val)
                          <option value="{{$key}}">{{$val ?? '' }}</option>
                          @empty
                          @endforelse
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                      <div class="form-group">
                        <strong>Possition:</strong>
                        <div class="form-group">
                            <input type="text" name="_gallary_serial_${row_number}" class="form-control _gallary_serial" placeholder="Possition">
                      </div> 
                    </div>
                </div>
            </div>
            </td>
            
            
            
            <td>
              <a href="#none" class="btn btn-default _image_row_remove" attr_counter_number="${row_number}" ><i class="fa fa-trash"></i></a>
            </td>
          </tr>
          </table>
          </div></div>`;

          $(document).find('._image_tbody').append(row);
          $("#counter_row").val(row_number);
          counter_function();
  }

$(document).on('click','.is_vedio',function(){
  if($(this).is(":checked")){

    $(this).closest("tr").find(".image_section").addClass("display_hide").removeClass("display_bock");

    $(this).closest("tr").find(".vedio_section").addClass("display_bock").removeClass("display_hide");
    console.log("checked")
  } else {
    console.log("Checkbox is not checked.");
    $(this).closest("tr").find(".vedio_section").addClass("display_hide").removeClass("display_bock");

    $(this).closest("tr").find(".image_section").addClass("display_bock").removeClass("display_hide");
    console.log("checked")


  }
})
  

   $(document).on("click",'._image_row_remove',function(){
     var confirmText = "Are you sure you want to delete this object?";
    if(confirm(confirmText)) {
     
          var detail_id = $(this).attr('attr_detail_id');
          if(detail_id !=""){
                  var request = $.ajax({
                  url: "{{url('post-image-remove')}}",
                  method: "GET",
                  data: { id : detail_id },
                  dataType: "html"
                });
                 
                request.done(function( msg ) {
                  alert(msg);
                });
                 
                request.fail(function( jqXHR, textStatus ) {
                  alert( "Request failed: " + textStatus );
                });
          }
      $(this).closest("tr").remove();
       counter_function();
    }
    
  })
</script>
@endsection