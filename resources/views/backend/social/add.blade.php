@extends('backend.layouts.app')

@section('title')
    Social Media
@endsection

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">ADD Social Media Link </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              @can('social_media-list')
              <li class="breadcrumb-item active">
                 <a class="btn btn-sm btn-primary" href="{{ url('social_media') }}"> Social Media</a>
               </li>
               @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <h3 class="text-center text-success">{!! Session::get('message') !!}</h3>
    <div class="card col-lg-12" style="width: 90%; margin-left: 44px;">
        
         <div class="message-area">
             @include('backend.common.message')
         </div>
        <div class="card-body card-block">
            <form action="{!! url('social-save') !!}" method="post" enctype="multipart/form-data" class="form-horizontal">
                @csrf
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="name" class=" form-control-label">Name</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" id="name" name="name" placeholder="Enter name" class="form-control" required>
                        <span class="text-danger">{!! $errors->has('name')? $errors->first('name'):'' !!}</span>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="icon" class=" form-control-label">Icon</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" id="icon" name="icon" placeholder="Enter icon" class="form-control" required>
                        <span class="text-danger">{!! $errors->has('icon')? $errors->first('icon'):'' !!}</span>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="url" class=" form-control-label">Link</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" id="url" name="url" class="form-control" class="form-control" required placeholder="Link">
                        <span class="text-danger">{!! $errors->has('url')? $errors->first('url'):'' !!}</span>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="Status" class=" form-control-label">Status</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <select class="form-control" name="status">
                                  @forelse(status() as $key=>$val)
                                  <option value="{{$key}}">{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                    </div>
                </div>
                

                

                <div class="card-footer">
                    <button type="submit" class="btn btn-primary btn-sm">
                        <i class="fa fa-dot-circle-o"></i>Submit
                    </button>
                    <button type="reset" class="btn btn-danger btn-sm">
                        <i class="fa fa-ban"></i>Reset
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
