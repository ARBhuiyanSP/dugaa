@extends('backend.layouts.app')

@section('title')
    Social Media
@endsection

@section('content')
    <h3 class="text-center text-success">{!! Session::get('message') !!}</h3>
    <div class="card col-lg-12" style="width: 90%; margin-left: 44px;">
        <div class="card-header">
            <strong>ADD Social Media Link</strong>
        </div>
        <div class="card-body card-block">
            <form action="{!! url('social-save') !!}" method="post" enctype="multipart/form-data" class="form-horizontal">
                @csrf
                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="text-input" class=" form-control-label">Name</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" id="text-input" name="name" placeholder="Enter name" class="form-control" required>
                        <span class="text-danger">{!! $errors->has('name')? $errors->first('name'):'' !!}</span>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col col-md-3">
                        <label for="file-input" class=" form-control-label">Link</label>
                    </div>
                    <div class="col-12 col-md-9">
                        <input type="text" id="file-input" name="id_link" class="form-control-file" class="form-control" required>
                        <span class="text-danger">{!! $errors->has('id_link')? $errors->first('id_link'):'' !!}</span>
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
