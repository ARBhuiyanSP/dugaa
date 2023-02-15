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
                                 {!! Form::textArea('post_subtitle', $data->post_subtitle ?? '', array('placeholder' => 'Post Sub Title','class' => 'form-control summernote')) !!}

                                
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
                                @php
                                $images= $data->_images ?? [];
                                $images_id = $images[0]->id ?? 0;
                                $image_link = $images[0]->image ?? '';
                                @endphp

                                <input type="hidden" name="image_id" value="{{$images_id}}">
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$image_link ?? ''}}" />
                            </div>
                            
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Image Hide/Show :</strong>
                                <select class="form-control" name="image_hide_show">
                                  @forelse(hide_show() as $key=>$val)
                                  <option value="{{$key}}">{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-9">
                            <div class="form-group">
                                <strong>Youtube Embade  Code : (  width="640" height="360" Replace With style="width:100%;hight:auto;"    )</strong>
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