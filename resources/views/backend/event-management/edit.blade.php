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
                 <a class="btn btn-sm btn-info"  href="{{ route('event-management.index') }}"> {{$page_name ?? '' }}</a>
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
               {!! Form::model($data, ['method' => 'PATCH','enctype'=>'multipart/form-data','route' => ['event-management.update', $data->id]]) !!}
                    <div class="row">
                        
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Name:</strong>
                                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Event Date:</strong>
                                {!! Form::date('event_date', null, array('placeholder' => 'Event Date','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Card Left Image:</strong>
                               <input type="file" accept="image/*" onchange="loadFile(event,1 )"  name="card_left_image" class="form-control">
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$data->card_left_image ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Card Left Image:</strong>
                               <input type="file" accept="image/*" onchange="loadFile(event,2 )"  name="card_right_image" class="form-control">
                               <img id="output_2" class="banner_image_create" src="{{asset('/')}}{{$data->card_right_image ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Background Image:</strong>
                               <input type="file" accept="image/*" onchange="loadFile(event,3 )"  name="background_image" class="form-control">
                               <img id="output_3" class="banner_image_create" src="{{asset('/')}}{{$data->background_image ?? ''}}" />
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