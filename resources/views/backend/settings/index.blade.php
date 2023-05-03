@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')

<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">General Settings </h1>
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
                <form method="POST" action="{{route('admin-settings-store')}}" enctype="multipart/form-data">
               @csrf
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Header LOGO:</strong>
                               <input type="file" accept="image/*" onchange="loadFile(event,1 )"  name="logo" class="form-control">
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Footer LOGO:</strong>
                               <input type="file" accept="image/*" onchange="loadFile(event,2 )"  name="footer_logo" class="form-control">
                               <img id="output_2" class="banner_image_create" src="{{asset('/')}}{{$settings->footer_logo ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Title:</strong>
                               <input type="text" name="title" required class="form-control" value="{{old('title',$settings->title ?? '' )}}">
                               <input type="hidden" name="id" value="{{$settings->id ?? ''}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Name:</strong>
                               <input type="text" name="name" required class="form-control" value="{{old('name',$settings->name ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Address:</strong>
                                <textarea class="form-control summernote" name="_address">{{old('_address',$settings->_address ?? '' )}}</textarea>
                              
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Phone:</strong>
                                <textarea class="form-control summernote" name="_phone">{{old('_phone',$settings->_phone ?? '' )}}</textarea>
                            </div>
                        </div>
                        
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Email:</strong>
                                <textarea class="form-control summernote" name="_email">{{old('_email',$settings->_email ?? '' )}}</textarea>
                               
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Keywords:</strong>
                               <input type="text" name="keywords" required class="form-control" value="{{old('keywords',$settings->keywords ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Author:</strong>
                               <input type="text" name="author" required class="form-control" value="{{old('author',$settings->author ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>URL:</strong>
                               <input type="text" name="url" required class="form-control" value="{{old('url',$settings->url ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                              <div class="form-group">
                                  <label>Cash Group:</label>
                                   <select class="form-control " name="_cash_group">
                                    @forelse($_accounts_group as $_group)
                                      <option value="{{$_group->id}}" @if($settings->_cash_group==$_group->id) selected @endif >{{$_group->_name ?? ''}}</option>
                                    @empty
                                    @endforelse
                                    </select>
                              </div>
                                
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                  <label>Bank Group:</label>
                                   <select class="form-control " name="_bank_group">
                                      @forelse($_accounts_group as $_group)
                                      <option value="{{$_group->id}}" @if($settings->_bank_group==$_group->id) selected @endif >{{$_group->_name ?? ''}}</option>
                                    @empty
                                    @endforelse
                                    </select>
                                </div>
                            </div>
                      
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Footer Content:</strong>
                                <textarea class="form-control summernote" name="footerContent">{{old('footerContent',$settings->footerContent ?? '' )}}</textarea>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Google Map Embed Code:</strong>
                                <textarea class="form-control" name="bg_image">{{old('bg_image',$settings->bg_image ?? '' )}}</textarea>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Member Registration Form Notice:</strong>
                                <textarea class="form-control summernote" name="reg_notice">{{old('reg_notice',$settings->reg_notice ?? '' )}}</textarea>
                            </div>
                        </div>
                        
                        
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary submit-button">Submit</button>
                        </div>
                    </div>
                    </form>
                
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