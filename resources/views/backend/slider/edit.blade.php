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
                 <a  class="btn btn-sm btn-info" href="{{ route('slider.index') }}"> {{$page_name ?? '' }}</a>
               </li>
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
               {!! Form::model($data, ['method' => 'PATCH','enctype'=>'multipart/form-data','route' => ['slider.update', $data->id]]) !!}
                    <div class="row">
                        
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Title:</strong>
                                {!! Form::text('title', null, array('placeholder' => 'Page/Title','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Sub Title:</strong>
                                {!! Form::text('sub_title', null, array('placeholder' => 'Sub Title','class' => 'form-control')) !!}
                            </div>
                        </div>
                        
                       
                        
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Display Possition:</strong>
                                {!! Form::text('posstion', null, array('placeholder' => 'Display Possition','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Image:</strong>
                                <input type="file" accept="image/*" onchange="loadFile(event,1 )"  name="slider_img" class="form-control">
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$data->slider_img ?? ''}}" />
                            </div>
                            
                        </div>
                         <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Status:</strong>
                                <select class="form-control" name="status">
                                  @forelse(status() as $key=>$val)
                                  <option value="{{$key}}" @if( $key==$data->status) selected @endif   >{{$val ?? '' }}</option>
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