@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')

<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{!! $page_name ?? ''  !!} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              @can('committee-history-list')
              <li class="breadcrumb-item active">
                 <a class="btn btn-sm btn-primary" href="{{ route('committee-history.index') }}"> {{$page_name ?? '' }}</a>
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
                {!! Form::open(array('route' => 'committee-history.store','method'=>'POST','enctype'=>'multipart/form-data')) !!}
                    <div class="row">
                        
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Name:</strong>
                                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Duration:</strong>
                                {!! Form::text('period', null, array('placeholder' => 'Duration','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Start Date:</strong>
                                {!! Form::date('start_date', null, array('placeholder' => 'Start Date','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>End Date:</strong>
                                {!! Form::date('end_date', null, array('placeholder' => 'End Date','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-2">
                            <div class="form-group">
                                <strong>Type:</strong>
                                <select class="form-control" name="_is_current">
                                  <option value="0">Old Committee</option>
                                  <option value="1">Current Committee</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-2">
                            <div class="form-group">
                                <strong>Display Website:</strong>
                                <select class="form-control" name="is_display">
                                  <option value="1">Yes</option>
                                  <option value="0">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-2">
                            <div class="form-group">
                                <strong>Serial:</strong>
                                {!! Form::text('_main_serial', old('serial'), array('placeholder' => ' Serial','class' => 'form-control')) !!}
                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                          <table class="table">
                            <thead>
                              <th>#</th>
                              <th>Member</th>
                              <th>Designation</th>
                              <th>Serial</th>
                              <th>Action</th>

                            </thead>
                            <tbody id="sortable-list">
                             
                              <tr id="item__1" class="_shortable_li">
                                <td>
                                 Up/Down
                                </td>
                                <td>
                                   <input type="hidden" name="detail_committe_id[]" value="0" />
                                  <select class="form-control" name="member_id[]" required>
                                    <option value=""> Select</option>
                                    @forelse($members as $val)
                                    <option value="{{ $val->id }}" > {{ $val->first_name ?? '' }} {{ $val->last_name ?? '' }}</option>
                                    @empty
                                    @endforelse
                                  </select>
                                </td>
                                <td>
                                  <select class="form-control" name="designation_id[]" required>
                                    <option value=""> Select</option>
                                    @forelse($designations as $val)
                                    <option value="{{$val->id}}"> {{ $val->name ??  '' }}</option>
                                    @empty
                                    @endforelse
                                  </select>
                                </td>
                                
                                <td>
                                  <input type="text" name="serial[]" class="form-control serial serial__1" value="1" readonly>
                                </td>
                                <td>
                                  <button  type="button" class="btn btn-sm btn-danger remove_row" >
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                </td>
                              </tr>
                              
                            </tbody>
                            <tfoot>
                              <td colspan="2">
                                <button type="button" class="btn btn-lg btn-info add_new_member">Add New </button>
                              </td>
                              <td colspan="4">
                                <input type="hidden" name="row_number" id="row_number" value="1">
                              </td>
                            </tfoot>
                          </table>

                         </div>
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
$(function() {
  $("#sortable-list").sortable({
    stop: function(event, ui) {
      var data = $(this).sortable('toArray');
      for (var i = 0; i < data.length; i++) {
          var item = data[i];
         let  substrings = item.split("__");
         let item_index = substrings[1];
         $(".serial__"+item_index).val((i+1));
          console.log(item_index)
      }
      
    }
  });
});

$(document).on('click','.remove_row',function(){
  if( confirm('Are You Sure?')){
    $(this).closest('tr').remove();
  }

})

$(document).on("click",".add_new_member",function(){

    var old_row_number = $("#row_number").val();
     var  row_number = (parseFloat(old_row_number)+1)
      $("#row_number").val((parseFloat(old_row_number)+1));

    $("#sortable-list").append(`<tr id="item__${row_number}" class="_shortable_li">
                                <td>
                                 Up/Down
                                </td>
                                <td>
                                  <input type="hidden" name="detail_committe_id[]" value="0" />
                                  <select class="form-control" name="member_id[]" required>
                                    <option value=""> Select</option>
                                    @forelse($members as $val)
                                    <option value="{{ $val->id }}"> {{ $val->first_name ?? '' }} {{ $val->last_name ?? '' }}</option>
                                    @empty
                                    @endforelse
                                  </select>
                                </td>
                                <td>
                                  <select class="form-control" name="designation_id[]" required>
                                    <option value=""> Select</option>
                                    @forelse($designations as $val)
                                    <option value="{{$val->id}}"> {{ $val->name ??  '' }}</option>
                                    @empty
                                    @endforelse
                                  </select>
                                </td>
                                
                                <td>
                                  <input type="text" name="serial[]" class="form-control serial serial__${row_number}" value="${row_number}" readonly>
                                </td>
                                <td>
                                  <button type="button" class="btn btn-sm btn-danger remove_row">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                </td>
                              </tr>`);
})

</script>
@endsection