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
               @can('event-management-create')
                        <a class="btn btn-sm btn-success" href="{{ route('event-management.create') }}"> New {!! $page_name ?? '' !!}</a>
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
                                  <th>Department Name</th>
                                  <th>Date</th>
                                  <th>Image 1</th>
                                  <th>Image 2</th>
                                  <th>Image 3</th>
                              </tr>
                          </thead>
                          <tbody>
                            @forelse($data as $key=>$value)
                            <tr>
                              <td>{{($key+1)}}</td>
                              <td style="display: flex;">
                                
                                @can('event-base-card')
                                    <a class="btn btn-sm btn-primary  mr-2" href="{{ url('event-base-card') }}/{{$value->id}}">
                                      Card
                                    </a>
                                @endcan
                                @can('event-management-edit')
                                    <a class="btn btn-sm btn-primary  mr-2" href="{{ route('event-management.edit',$value->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('event-management-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['event-management.destroy', $value->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                              <td>{!! $value->name ?? '' !!}</td>
                              <td>{!! $value->department_name ?? '' !!}</td>
                              <td>{!! $value->event_date ?? '' !!}</td>
                              <td>
                                <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$value->card_left_image ?? ''}}" />
                              </td>
                              <td>
                                <img id="output_2" class="banner_image_create" src="{{asset('/')}}{{$value->card_right_image ?? ''}}" />
                              </td>
                              <td>
                                 <img id="output_3" class="banner_image_create" src="{{asset('/')}}{{$value->background_image ?? ''}}" />
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