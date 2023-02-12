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
              @can('member-info-list')
              <li class="breadcrumb-item active">
                 <a class="btn btn-primary" href="{{ route('member-info.index') }}"> {{$page_name ?? '' }}</a>
               </li>
               @endcan
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
                {!! Form::open(array('route' => 'member-info.store','method'=>'POST','enctype'=>'multipart/form-data')) !!}
                    <div class="row">
                        
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Alumni Id:</strong>
                                {!! Form::text('member_id', null, array('placeholder' => 'Alumni Id','class' => 'form-control','readonly'=>'true')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Entery Degree:</strong>
                                <select name="entery_degree" class="form-control" required="true">
                                  <option value="">Select Degree</option>
                                  @forelse($degress as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Photo:</strong>
                                <input type="file" name="member_image" class="form-control" accept="image/*" onchange="loadFile(event,1 )" >
                                <img style="margin-top: 5px;" id="output_1" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Batch:</strong>
                                {!! Form::text('batch', null, array('placeholder' => 'Batch','class' => 'form-control','readonly'=>'true')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Admission Session:</strong>
                                <select name="admission_session" class="form-control" required="true">
                                  <option value="">--Select--</option>
                                  @forelse($examsessions as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group">
                                <strong>Alumni Category:</strong>
                                <select name="alumni_category" class="form-control" required="true">
                                  <option value="">--Select--</option>
                                  @forelse($membership_types as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
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