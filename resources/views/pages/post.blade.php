@extends('layouts.app')
@section('content')
@section('title',$settings->title ?? '' )

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
			
			<div class="row">
				

				@forelse($data as $post_key=>$post_val)
				@php
				$images = $post_val->_images ?? [];
				$image_link = $images[0]->image ?? '';
				
				@endphp
				@if($post_key==0)

				<div class=" col-sm-12 ">
					<div class="card" style="width: 100%;">
						@if($post_val->image_hide_show==1 && $image_link !='' )
						<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
							  <img class="card-img-top p-1" src="{{asset('/')}}/{{$image_link}}" alt="{!! $post_val->post_title ?? '' !!}">
							</a>
					  @endif
					  <div class="card-body">
					  	<div class="below-entry-meta">
						<span class="posted-on">
							
								<i class="fa fa-calendar"></i>
								<time class="entry-date published" datetime="{{$post_val->date ?? '' }}"></time>{{$post_val->created_at ?? '' }}
						</span>                       
						</div>
					    <p class="card-text">
					    	<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
					    	{!! $post_val->post_title ?? '' !!}
					    	</a>
					    </p>
					    <p class="card-text">
					    	{{ $post_val->post_subtitle ?? '' }}
					    </p>
					    <a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" class="btn btn-sm btn-info">Read More</a>
					  </div>
					</div>
				</div>
				@else
				<div class=" col-sm-6 mt-2">
					<div class="card" style="width: 100%;">
						@if($post_val->image_hide_show==1 && $image_link !='' )
						<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
							  <img class="card-img-top p-1" src="{{asset('/')}}/{{$image_link}}" alt="{!! $post_val->post_title ?? '' !!}">
							</a>
					  @endif
					  <div class="card-body">
					  	<div class="below-entry-meta">
						<span class="posted-on">
							
								<i class="fa fa-calendar"></i>
								<time class="entry-date published" datetime="{{$post_val->date ?? '' }}"></time>{{$post_val->created_at ?? '' }}
						</span>                       
						</div>
					    <p class="card-text">
					    	<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
					    	{!! $post_val->post_title ?? '' !!}
					    	</a>
					    </p>
					    <p class="card-text">
					    	{!! $post_val->post_subtitle ?? '' !!}
					    </p>
					    <a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" class="btn btn-sm btn-info">Read More</a>
					  </div>
					</div>
				</div>
					
				@endif

				@empty
				@endforelse

				

				<div class="col-md-12 mt-3">
					{{ $data->links() }}
				</div>
				
			</div>

			
			
		</div><!-- Left side content End -->
		<div class=" col-xs-12 col-sm-4 col-md-4 col-lg-4">
			@include('includes.side_bar')
		</div><!-- Right Side bar End-->
	</div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop