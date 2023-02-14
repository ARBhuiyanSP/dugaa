@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{{$page_name ?? '' }} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a class="btn btn-sm btn-info" href="{{url('home')}}">Home</a></li>
              <li class="breadcrumb-item active">
                 <a class="btn btn-sm btn-info"  href="{{ route('main-menu.index') }}"> {{$page_name ?? '' }}</a>
               </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
    @if (count($errors) > 0)
           <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
        @endif
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             
              <div class="card-body">
               {!! Form::model($data, ['method' => 'PATCH','route' => ['main-menu.update', $data->id]]) !!}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Menu Category:</strong>
                                <select class="form-control" name="parent_id">
                                  <option value="0">Main Menu</option>
                                  @forelse($categories as $key=>$val)
                                  <option value="{{$val->id}}" @if($val->id==$data->parent_id) selected @endif >{{$val->menu_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Page/Menu Name:</strong>
                                {!! Form::text('menu_name', null, array('placeholder' => 'Page/Menu Name','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Page Type:</strong>
                                <select class="form-control" name="page_type">
                                  @forelse(page_types() as $key=>$val)
                                  <option value="{{$key}}" @if( $key==$data->page_type) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Display Main Menu?:</strong>
                                <select class="form-control" name="is_main_menu_show">
                                  @forelse(show_hide() as $key=>$val)
                                  <option value="{{$key}}"  @if( $key==$data->is_main_menu_show) selected @endif >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Display Footer Menu?:</strong>
                                <select class="form-control" name="is_footer_menu_show">
                                  @forelse(show_hide() as $key=>$val)
                                  <option value="{{$key}}" @if( $key==$data->is_footer_menu_show) selected @endif  >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Status:</strong>
                                <select class="form-control" name="status">
                                  @forelse(status() as $key=>$val)
                                  <option value="{{$key}}" @if( $key==$data->status) selected @endif   >{{$val ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <strong>Display Possition:</strong>
                                {!! Form::text('serial', null, array('placeholder' => 'Display Possition','class' => 'form-control')) !!}
                            </div>
                        </div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                
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