@extends('backend.layouts.app')


@section('content')
<!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Users Management </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               @can('user-create')
                        <a class="btn btn-success" href="{{ route('users.create') }}"> Create New User</a>
                @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif
    <!-- /.content-header -->
<div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header border-0">
                @include('users.search')
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <table class="table table-bordered">
                     <tr>
                       <th>No</th>
                       <th class="_action">Action</th>
                       <th>Name</th>
                       <th>Email</th>
                       <th>Roles</th>
                     </tr>
                     @foreach ($data as $key => $user)
                      <tr>

                        <td>{{ ++$i }}</td>
                         <td>
                           <a class="btn btn-sm btn-info" href="{{ route('users.show',$user->id) }}">
                             <i class="nav-icon fas fa-eye"></i>
                           </a>
                           <a class="btn btn-sm btn-primary" href="{{ route('users.edit',$user->id) }}">
                             <i class="nav-icon fas fa-edit"></i>
                           </a>
                            {!! Form::open(['method' => 'DELETE','route' => ['users.destroy', $user->id],'style'=>'display:inline']) !!}
                               <button type="submit" class="btn btn-sm btn-danger">
                                 <i class="nav-icon fas fa-trash"></i>
                            </button>
                            {!! Form::close() !!}
                        </td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                          @if(!empty($user->getRoleNames()))
                            @foreach($user->getRoleNames() as $v)
                               <label class="badge badge-success">{{ $v }}</label>
                            @endforeach
                          @endif
                        </td>
                       
                      </tr>
                     @endforeach
                    </table>
                </div>
                <!-- /.d-flex -->

 

                

                <div class="d-flex flex-row justify-content-end">
                  {!! $data->render() !!}
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