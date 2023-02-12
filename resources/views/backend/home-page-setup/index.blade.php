@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<style type="text/css">
  ._shortable_li{
    cursor: pointer !important; 
  }
</style>
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{{$page_name ?? ''}} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
             
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
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
                <div class="row">
                  
                
                <form action="{{url('home-page-setup')}}" method="POST">
                  @csrf
                  <div class="col-xs-12 col-sm-12 col-md-12 ">
                <ul id="sortable-list">
                  @forelse($data as $key=>$val)
                    <li id="item__{{$val->id}}" class="_shortable_li">
                      <table style="width: 100%;border-collapse: collapse;">
                        
                        <tr style="border-top: 1px solid grey;border-left: 1px solid grey;border-right: 1px solid grey;">
                          <td style="width: 15%">
                            Up/Down 
                          </td>
                          <td style="width:30%;border: 1px solid grey; ">
                            <input type="text" name="menu_name[]" value="{{$val->menu->menu_name ?? '' }}" readonly class="form-control menu_name">

                            <input type="hidden" name="menu_id[]" value="{{$val->menu_id}}" class="form-control menu_id">

                            <input type="hidden" name="id[]" value="{{$val->id ?? 0}}" class="form-control id">
                          </td>
                          
                          <td style="width:10%;border: 1px solid grey; ">
                            <input type="text" name="serial[]" value="{{$val->serial}}" readonly class="form-control serial serial__{{$val->id}}">
                            
                          </td>
                          <td style="width:15%;border: 1px solid grey; ">
                            <input type="text" name="_limit[]" class="form-control _limit" value="{{$val->_limit ?? 0}}" placeholder="Limit">
                            
                          </td>
                          <td style="width:15%;border: 1px solid grey; ">
                            
                            <select class="form-control block_type" name="block_type[]">
                              <option value="1" @if($val->block_type==1) selected @endif >Main Block</option>
                              <option value="2" @if($val->block_type==2) selected @endif >Side Block</option>
                            </select>
                          </td>
                          <td style="width:15%;border: 1px solid grey; ">
                            <select class="form-control status" name="status[]">
                              <option value="1" @if($val->status==1) selected @endif >Publish</option>
                              <option value="0" @if($val->status==0) selected @endif >Unpublish</option>
                            </select>
                          </td>
                        </tr>
                      </table>
                    </li>
                  @empty
                  @endforelse
                  </ul>
                </div>
                  <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                </form>
                </div>
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
</script>
@endsection