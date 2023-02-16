@extends('layouts.app')
@section('title',$settings->title ?? '' )
@section('content')


<div class="container-fluid mt-1">

<section class="blog-section mt-2"> <!-- Slider Start -->
	<div class="row">
		<div class=" col-xs-12 col-sm-8 col-md-8 col-lg-8">
			@forelse($data as $key=>$value)
			@php
				$images = $value->_images ?? [];
				$image_link = $images[0]->image ?? '';
			@endphp
			<h3 class="widget-title mt-1" >{!! $value->post_title ?? '' !!}</h3>
			<div class="card" style="width: 100%;">
					@if($image_link !='')
					<img class="card-img-top p-1" src="{{asset('/')}}/{{$image_link}}" alt="{!! $value->post_title ?? '' !!}">
					@endif

					
							
					<div class="card-body">
					  	<div class="below-entry-meta">
						<span class="posted-on">
							
								<i class="fa fa-calendar"></i>
								<time class="entry-date published" datetime="{{$value->date ?? '' }}"></time>{{$value->created_at ?? '' }}
						</span>                       
						</div>
					    <h4 class="card-text">
					    	{!! $value->post_subtitle ?? '' !!}
					    </h4>
					    <div>
					    	{!! $value->details ?? '' !!}
					    </div>
					  </div>
					</div>

			@empty
			@endforelse
			
		</div><!-- Left side content End -->

		<div class=" col-xs-12 col-sm-4 col-md-4 col-lg-4">
			@include('includes.side_bar')
		</div><!-- Right Side bar End-->
	</div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop