@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{!! $page_name ?? '' !!}</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               @can('admin-post-create')
                        <a class="btn btn-sm btn-success" href="{{ url('admin-post-create') }}/{{$slug_detail->slug}}"> New {!! $page_name ?? '' !!}</a>
                @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
     @include('backend.common.message')
    </div>
    <!-- /.content-header -->
<div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              
              <div class="card-body">
                <div class="table-responsive">
                  <table id="example" class="table" style="width:100%">
                          <thead>
                              <tr>
                                  <th>SL</th>
                                  <th>Action</th>
                                  <th>Title</th>
                                  <th>Status</th>
                              </tr>
                          </thead>
                          <tbody>
                            @forelse($data as $key=>$value)
                            <tr>
                              <td>{{($key+1)}}</td>
                              <td style="display: flex;">
                                
                                @can('admin-post-edit')
                                    <a class="btn btn-sm btn-primary  mr-2" href="{{ url('admin-post-edit') }}/{{$value->id}}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('admin-post-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['admin-post.destroy', $value->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                              <td>{!! $value->post_title ?? '' !!}</td>
                              <td>{!! selected_status($value->status) !!}</td>
                            </tr>
                            @empty
                            @endforelse
                          </tbody>
                          <tfoot>
                               <tr>
                                  <th>SL</th>
                                  <th>Action</th>
                                  <th>Title</th>
                                  <th>Status</th>
                              </tr>
                          </tfoot>
                      </table>
                </div>
                <!-- /.d-flex -->

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

