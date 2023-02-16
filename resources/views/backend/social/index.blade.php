@extends('backend.layouts.app')

@section('title')
    Social Media
@endsection

@section('content')
    <div class="container-fluid">
        <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Social Media</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               @can('slider-create')
                        <a class="btn btn-sm btn-success" href="{{ url('social-create') }}"> New </a>
                @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            
            <div class="message-area">
             @include('backend.common.message')
         </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" style="width: 100%">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Icon</th>
                            <th>Link</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                       
                        <tbody>
                        @foreach($medias as $media)
                            <tr>
                                <td>{!! $media->name ?? null  !!}</td>
                                <td>{!! $media->icon ?? null  !!}</td>
                                <td>{!! $media->url ?? null  !!}</td>
                                 <td>{!! selected_status($media->status) !!}</td>
                                <td>
                                    <a href="{!! url('/social-edit/'.$media->id) !!}" class="btn btn-success">
                                        <span class="fa fa-edit"></span>
                                    </a>

                                    <a href="{!! url('/social-delete/'.$media->id) !!}" onclick="return confirm('Are you confirm to Delete?');" class="btn btn-danger">
                                        <span class="fa fa-trash"></span>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->

@endsection
