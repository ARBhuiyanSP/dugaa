@extends('backend.layouts.app')

@section('title')
    Edit Social
@endsection

@section('content')
    <h3 class="text-center text-success">{!! Session::get('message') !!}</h3>
    <div class="card col-lg-12" style="width: 90%; margin-left: 44px;">
        <div class="card-header">
            <strong>Edit Social</strong>
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
                        <label for="file-input" class=" form-control-label">Link</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" value="{!! $media->id_link !!}" id="file-input" name="id_link" class="form-control-file">
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
