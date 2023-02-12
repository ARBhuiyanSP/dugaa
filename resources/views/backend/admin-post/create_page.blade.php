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
              @can('admin-post-list')
              <li class="breadcrumb-item active">
                 <a class="btn btn-primary" href="{{ url('admin-post') }}/{{$slug_detail->slug}}"> {{$page_name ?? '' }}</a>
               </li>
               @endcan
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
        @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             @php
             $data = $data[0] ?? '';
             @endphp
              <div class="card-body">
                {!! Form::open(array('route' => 'admin-post.store','method'=>'POST','enctype'=>'multipart/form-data')) !!}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <input type="hidden" name="menu_id" value="{{$slug_detail->id}}">
                                <input type="hidden" name="menu_slug" value="{{$slug_detail->slug}}">
                                <input type="hidden" name="id" value="{{$data->id ?? 0 }}">
                                <input type="hidden" name="form_name" value="_page">
                               
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Post Title:</strong>
                                <input type="text" name="post_title" 
                                    class="form-control" required="true" 
                                    value="{{$data->post_title ?? '' }}" 
                                    placeholder="Post Title">
                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Post Sub  Title:</strong>
                                 <input type="text" name="post_subtitle" 
                                    class="form-control" 
                                    value="{{$data->post_subtitle ?? '' }}" 
                                    placeholder="Post Sub Title">

                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Post Body:</strong>

                                {!! Form::textArea('details', $data->details ?? '', array('placeholder' => 'Post Detail','class' => 'form-control summernote')) !!}
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Image Possition:</strong>
                                @php
                                $image_possition = $data->image_possition ?? 0;
                                @endphp
                                <select class="form-control" name="image_possition">
                                  @forelse( image_possition() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$image_possition) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Cloumn Size:</strong>
                                @php
                                $column_size = $data->column_size ?? 0;
                                @endphp
                                <select class="form-control" name="column_size">
                                  @forelse( cloumn_size() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$column_size) selected @endif  >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Display Possition:</strong>
                                {!! Form::text('position', $data->position ?? 1, array('placeholder' => 'Display Possition','class' => 'form-control')) !!}
                            </div>
                        </div>
                       
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Status:</strong>
                                @php
                                $status = $data->status ?? 0;
                                @endphp
                                <select class="form-control" name="status">
                                  @forelse(status() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$status) selected @endif  >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Image:</strong>
                                <input type="file" accept="image/*" onchange="loadFile(event,1 )"  name="image" class="form-control">

                                <input type="hidden" name="image_id" value="">
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}" />
                            </div>
                            
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