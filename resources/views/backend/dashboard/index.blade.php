@extends('backend.layouts.app')
@section('title',$settings->name ?? '')
@section('content')
<!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">  <span style="color: green;">Welcome</span> {{ \Auth::user()->name ?? '' }}</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

@endsection
@section('script')
<script src="{{asset('plugins/chart.js/Chart.min.js')}}"></script>
<script src="{{asset('dist/js/pages/dashboard3.js')}}"></script>

@endsection