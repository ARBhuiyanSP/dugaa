@extends('layouts.app')
@section('title',$settings->title ?? '' )
@section('content')

<div class="container-fluid mt-1">

<section class="blog-section mt-2"> <!-- Slider Start -->
    <div class="row">
        <div class=" col-xs-12 col-sm-8 col-md-8 col-lg-8">
           <h3 class="widget-title mt-1" style="">
                <span style="color: #fff;
                font-weight: 500;
                padding-right: 5px;
                padding-left: 5px;">
                    {!! $page_name ?? '' !!}</span>
            </h3>
            <div class=" p-2">
               <table class="table table-bordered">
                @forelse($documents as $key=>$value)
                   <tr>
                       <td>{!! $value->name ?? '' !!}</td>
                       <td><a href="{{asset('/')}}{{$value->_doc_file ?? ''}}" download="{{asset('/')}}{{$value->_doc_file ?? ''}}" class="btn btn-sm btn-info">Download</a></td>
                   </tr>
                @empty
                @endforelse
               </table>
            </div>

            
           
               
            
        </div><!-- Left side content End -->
        <div class=" col-xs-12 col-sm-4 col-md-4 col-lg-4">
            @include('includes.side_bar')
        </div><!-- Right Side bar End-->
    </div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop