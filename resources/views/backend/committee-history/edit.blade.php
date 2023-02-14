@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{{$page_name ?? '' }} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a class="btn btn-sm btn-info" href="{{url('home')}}">Home</a></li>
              <li class="breadcrumb-item active">
                 <a  class="btn btn-sm btn-info"  href="{{ route('committee-history.index') }}"> {{$page_name ?? '' }}</a>
               </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
      @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif
    @if (count($errors) > 0)
           <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
        @endif
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             
              <div class="card-body">
               {!! Form::model($data, ['method' => 'PATCH','enctype'=>'multipart/form-data','route' => ['committee-history.update', $data->id]]) !!}
                    <div class="row">
                        
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Name:</strong>
                                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
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
                                  <option value="0" @if($data->_is_current==0) selected @endif >Old Committee</option>
                                  <option value="1" @if($data->_is_current==1) selected @endif >Current Committee</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-2">
                            <div class="form-group">
                                <strong>Display Website:</strong>
                                <select class="form-control" name="is_display">
                                  <option value="1" @if($data->is_display==1) selected @endif >Yes</option>
                                  <option value="0" @if($data->is_display==0) selected @endif >No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-2">
                            <div class="form-group">
                                <strong>Serial:</strong>
                                {!! Form::text('_main_serial', $data->serial, array('placeholder' => ' Serial','class' => 'form-control')) !!}
                                
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
                              @php

                              $committee_members = $data->committee_members ?? [];
                              @endphp
                             @if(sizeof( $committee_members) > 0)
                             @forelse( $committee_members as $key=>$com_mem)
                              <tr id="item__{{($key+1)}}" class="_shortable_li">
                                <td>
                                 Up/Down
                                </td>
                                <td>
                                   <input type="hidden" name="detail_committe_id[]" value="{{$com_mem->id}}" />
                                  <select class="form-control" name="member_id[]" required>
                                    <option value=""> Select</option>
                                    @forelse($members as $val)
                                    <option value="{{ $val->id }}" @if($val->id==$com_mem->member_id) selected @endif  > {{ $val->first_name ?? '' }} {{ $val->last_name ?? '' }}</option>
                                    @empty
                                    @endforelse
                                  </select>
                                </td>
                                <td>
                                  <select class="form-control" name="designation_id[]" required>
                                    <option value=""> Select</option>
                                    @forelse($designations as $val)
                                    <option value="{{$val->id}}" @if($val->id==$com_mem->designation_id) selected @endif > {{ $val->name ??  '' }}</option>
                                    @empty
                                    @endforelse
                                  </select>
                                </td>
                                
                                <td>
                                  <input type="text" name="serial[]" class="form-control serial serial__{{($key+1)}}" value="{{$com_mem->serial ?? 1}}" readonly>
                                </td>
                                <td>
                                  <button  type="button" class="btn btn-sm btn-danger remove_row" >
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                </td>
                              </tr>
                              @empty
                              @endforelse
                              @endif
                            </tbody>
                            <tfoot>
                              <td colspan="2">
                                <button type="button" class="btn btn-lg btn-info add_new_member">Add New </button>
                              </td>
                              <td colspan="4">
                                <input type="hidden" name="row_number" id="row_number" value="{{ (sizeof($committee_members)) }}">
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