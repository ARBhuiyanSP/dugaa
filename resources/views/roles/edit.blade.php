@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Edit Role </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <!-- <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li> -->
              <li class="breadcrumb-item active">
                 <a class="btn btn-primary" href="{{ route('roles.index') }}"> Role Management</a>
               </li>
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
                {!! Form::model($role, ['method' => 'PATCH','route' => ['roles.update', $role->id]]) !!}
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <strong>Name:</strong>
                                    {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                             
                                <strong>Type:</strong>
                                <select class="form-control" name="type">
                                  @forelse($types as $key=>$value)
                                  <option @if($role->type==$value) selected @endif value="{{$value}}">{{$value}}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 mb-10" >
                                <div class="form-group">
                                    <strong>Permission:</strong>
                                    <br/>
                                @php
                                $number = 1;
                               @endphp
                                   @foreach($permission as $key=>$values)
                                    <div class=" card" >
                                      <div class="card-header">
                                        <h4>{{$number}}.{{$key}}</h4>
                                      </div>
                                  
                                   <div class="row card-body">
                                    @foreach($values as $value)
                                    <div class="col-md-3">
                                        <label>{{ Form::checkbox('permission[]', $value->id, in_array($value->id, $rolePermissions) ? true : false, array('class' => 'name')) }}
                                          {{ $value->name }}</label>
                                    </div>
                                      @endforeach 
                                  </div>

                                     
                                  </div>
                                  @php
                                $number++;
                               @endphp
                                   @endforeach
                               </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                                <button type="submit" class="btn btn-primary submit-button">Submit</button>
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