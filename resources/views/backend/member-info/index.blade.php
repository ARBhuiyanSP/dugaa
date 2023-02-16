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
               @can('member-info-create')
                        <a class="btn btn-sm btn-success" href="{{ route('member-info.create') }}"> New {!! $page_name ?? '' !!}</a>
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
                                  <th>Alumni ID</th>
                                  <th>Name</th>
                                  <th>Image</th>
                                  <th>Session</th>
                                  <th>Category</th>
                              </tr>
                          </thead>
                          <tbody>
                            @forelse($data as $key=>$value)
                            <tr>
                              <td>{{($key+1)}}</td>
                              <td style="display: flex;">
                                
                                @can('member-info-edit')
                                    <a class="btn btn-sm btn-primary  mr-2" href="{{ route('member-info.edit',$value->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('member-info-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['member-info.destroy', $value->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                              <td>{!! $value->member_id ?? '' !!}</td>
                              <td>{!! $value->first_name ?? '' !!} {!! $value->last_name ?? '' !!}</td>
                              
                              <td>
                                
                                @php
                                 $file_path = asset('/')."/".$value->member_image;
                                @endphp
                                @if(file_exists($file_path))
                                <img style="padding: 5px;width: 80px;"  class="banner_image_create" src="{{asset('/')}}{{$value->member_image ?? ''}}" />
                                @endif
                              </td>
                              <td>{{ $value->admission_session ?? '' }}</td>
                              <td>{{ $value->_member_ship_type->name ?? '' }}</td>
                            </tr>
                            @empty
                            @endforelse
                          </tbody>
                          
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