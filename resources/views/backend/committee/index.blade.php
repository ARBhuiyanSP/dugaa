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
               @can('committee-create')
                        <a class="btn btn-sm btn-success" href="{{ route('committee.create') }}"> New {!! $page_name ?? '' !!}</a>
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
                                  <th>Name</th>
                                  <th>Duration</th>
                                  <th>Start Date</th>
                                  <th>End Date</th>
                                  <th>Status</th>
                              </tr>
                          </thead>
                          <tbody>
                            @forelse($data as $key=>$value)
                            <tr>
                              <td>{{($key+1)}}</td>
                              <td style="display: flex;">
                                
                                @can('committee-edit')
                                    <a class="btn btn-sm btn-primary  mr-2" href="{{ route('committee.edit',$value->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('committee-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['committee.destroy', $value->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                              <td>{!! $value->name ?? '' !!}</td>
                              <td>{!! $value->period ?? '' !!}</td>
                              <td>{!! $value->start_date ?? '' !!}</td>
                              <td>{!! $value->end_date ?? '' !!}</td>
                              <td>
                                @if($value->_is_current==1)
                                <span class="btn btn-sm btn-success">Current Committee</span>
                                @else
                                  <span class="btn btn-sm btn-danger">Old Committee</span>
                                @endif
                              </td>
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