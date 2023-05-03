@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
<div class="content-header">
      <div class="container-fluid">

        <div class="col-sm-12" style="display: flex;">
             <a class="m-0 _page_name" href="{{ route('cost-center.index') }}"> {!! $page_name ?? '' !!} </a>
            <ol class="breadcrumb float-sm-right ml-2">
               @can('cost-center-create')
              <li class="breadcrumb-item active">
                  <a class="btn btn-info" href="{{ route('cost-center.create') }}"> Create New </a>
               </li>
              @endcan
            </ol>
          </div>

        
      </div><!-- /.container-fluid -->
    </div>
    @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header border-0">
                 @include('backend.cost-center.search')
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <table class="table table-bordered _list_table ">
                      <thead>
                        <tr>
                         <th class="_no">No</th>
                         <th class="_action">Action</th>
                         <th>Name</th>
                         <th>Branch</th>
                         <th>Code</th>
                        
                      </tr>
                      </thead>
                      <tbody>
                        
                      
                        @foreach ($datas as $key => $data)
                        <tr>
                            <td>{{ $key+1 }}</td>

                               <td style="display: flex;">
                            <div class="dropdown mr-1">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false"> Action</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                   <a class="dropdown-item "  href="{{ route('cost-center.show',$data->id) }}">View  </a>
                                  @can('cost-center-edit')
                                    <a class="dropdown-item " href="{{ route('cost-center.edit',$data->id) }}">Edit</a>
                                  @endcan
                                 @can('cost-center-delete')
                                  {!! Form::open(['method' => 'DELETE','route' => ['cost-center.destroy', $data->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm ">
                                            <span class="_required">Delete</span>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                                </div>
                              </div>
                        </td>
                            <td>{{ $data->id }} - {{ $data->_name }}</td>
                            <td>{{ $data->_branch->_name ?? '' }}</td>
                            <td>{{ $data->_code ?? '' }}</td>
                            
                           
                        </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.d-flex -->

                

                <div class="d-flex flex-row justify-content-end">
                 {!! $datas->render() !!}
                </div>
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