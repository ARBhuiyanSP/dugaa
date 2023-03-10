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
                              
                                <input type="hidden" name="form_name" value="_post">
                                <input type="hidden" name="id" value="{{$data->id ?? 0}}">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Post Title:</strong>
                                {!! Form::text('post_title', $data->post_title, array('placeholder' => 'Post Title','class' => 'form-control','required'=>'true')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Post Sub  Title:</strong>
                                 {!! Form::textArea('post_subtitle', $data->post_subtitle ?? '', array('placeholder' => 'Post Sub Title','class' => 'form-control summernote')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Post Body:</strong>
                                {!! Form::textArea('details', $data->details, array('placeholder' => 'Post Detail','class' => 'form-control summernote')) !!}
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Image Possition:</strong>
                                <select class="form-control" name="image_possition">
                                  @forelse( image_possition() as $key=>$val)
                                  <option value="{{$key}}" @if($data->image_possition==$key) selected @endif  >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Cloumn Size:</strong>
                                <select class="form-control" name="column_size">
                                  @forelse( cloumn_size() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$data->column_size) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Display Possition:</strong>
                                {!! Form::text('position', $data->position, array('placeholder' => 'Display Possition','class' => 'form-control')) !!}
                            </div>
                        </div>
                       
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Status:</strong>
                                <select class="form-control" name="status">
                                  @forelse(status() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$data->status) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Image:</strong>
                                <input type="file" accept="image/*" onchange="loadFile(event,1 )"  name="image" class="form-control">
                                @php
                                $_images = $data->_images ?? [];
                               // dump($_images);
                                 $image_name = $_images[0]->image ?? '';
                                @endphp
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{ $image_name ?? ''}}" />
                            </div>
                            
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Image Hide/Show :</strong>
                                <select class="form-control" name="image_hide_show">
                                  @forelse(hide_show() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$data->image_hide_show) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-9">
                            <div class="form-group">
                                <strong>Youtube Embade  Code :(  width="640" height="360" Replace With style="width:100%;hight:auto;"    )</strong>
                                 {!! Form::textArea('_vedio_link', $data->_vedio_link, array('placeholder' => 'Youtube Embade  Code','class' => 'form-control')) !!}
                            </div>
                        </div>
                        @php
                        $_vedio_link_show = $data->_vedio_link_show ?? 0;
                        @endphp
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Is Display Vedio Link on Font :</strong>
                                <select class="form-control" name="_vedio_link_show">
                                  @forelse(hide_show() as $key=>$val)
                                  <option value="{{$key}}" @if($key==$_vedio_link_show) selected @endif  >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
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