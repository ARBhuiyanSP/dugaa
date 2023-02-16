@extends('backend.layouts.app')

@section('title')
    Edit Social
@endsection

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Social Media Link </h1>
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
            <form action="{!! url('social-update') !!}" method="post" name="edit_form" enctype="multipart/form-data" class="form-horizontal">
                @csrf
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="text-input" class=" form-control-label">Name</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" value="{!! $media->name !!}" id="text-input" name="name" placeholder="Enter Title" class="form-control">
                        <input type="hidden" value="{!! $media->id !!}" class="form-control" name="id">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="icon" class=" form-control-label">Icon</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" value="{!! $media->icon !!}" id="icon" name="icon" class="form-control">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="url" class=" form-control-label">Link</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" value="{!! $media->url !!}" id="url" name="url" class="form-control" placeholder="Link">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="Status" class=" form-control-label">Status</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <select class="form-control" name="status">
                                  @forelse(status() as $key=>$val)
                                  <option value="{{$key}}" @if( $key==$media->status) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                    </div>
                </div>
                
                

                <div class="card-footer">
                    <button type="submit" class="btn btn-primary btn-sm">
                        <i class="fa fa-dot-circle-o"></i> Update
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
