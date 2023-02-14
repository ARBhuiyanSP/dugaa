@extends('layouts.app')
@section('content')
@section('title',$settings->title ?? '' )
@php
$sliders = \App\Models\Slider::orderBy('posstion','asc')->get();
@endphp
<div class="container-fluid mt-1">
<section class="slider-section"> <!-- Slider Start -->
 
 	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
  	@forelse($sliders as $key=>$val)

    <div class="carousel-item @if($key==0) active @endif ">
      <img class="d-block w-100" src="{{asset('/')}}/{{$val->slider_img}}" alt="{{$val->title ?? '' }}">
      <div class="carousel-caption d-none d-md-block">
			    <h5>{{$val->title ?? '' }}</h5>
			    <p>{{$val->sub_title ?? '' }}</p>
			  </div>
    </div>
    @empty
    @endforelse
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</section> <!-- Slider End -->

<section class="blog-section mt-2"> <!-- Slider Start -->
	<div class="row">
		<div class=" col-xs-12 col-sm-8 col-md-8 col-lg-8">
			@php
			$blog_menus = \App\Models\HomePageSetup::with(['menu'])->where('block_type',1)
												->where('status',1)
												->orderBy('serial','ASC')
												->get();
			@endphp
			@forelse($blog_menus  as $blog_key=>$blog_data)
			<h3 class="widget-title mt-1" style="">
				<span style="">
					{!! $blog_data->menu->menu_name ?? '' !!}</span>
			</h3>
			
			<div class="row">
				@php
				$posts = \App\Models\Post::with(['_images'])->where('menu_id',$blog_data->id)
											->where('status',1)
											->orderBy('created_at','DESC')
											->orderBy('position','asc')
											->limit($blog_data->_limit ?? 5)
											->get();

				@endphp

				@forelse($posts as $post_key=>$post_val)
				@php
				$images = $post_val->_images ?? [];
				$image_link = $images[0]->image ?? '';
				
				@endphp
				@if($post_key==0)

				<div class=" col-sm-6 ">
					<div class="card" style="width: 100%;">
						@if($post_val->image_hide_show==1 && $image_link !='' )
						<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
							  <img class="card-img-top" src="{{asset('/')}}/{{$image_link}}" alt="{!! $post_val->post_title ?? '' !!}">
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
					  </div>
					</div>
				</div>
					@php
					break;
					@endphp
				@endif

				@empty
				@endforelse

				<div class="col-sm-6">
					<div class="row">
						@forelse($posts as $post_key=>$post_val)
							@php
							$images = $post_val->_images ?? [];
							$image_link = $images[0]->image ?? '';
							
							@endphp
							@if($post_key != 0)

							<div class=" col-sm-12 mt-1">
								<div class="card" style="width: 100%;">
									<div class="row">
										<div class="col-sm-6">
											@if($post_val->image_hide_show==1 && $image_link !='' )
												<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
													  <img class="card-img-top side-image" src="{{asset('/')}}/{{$image_link}}" alt="{!! $post_val->post_title ?? '' !!}">
													</a>
											  @endif
										</div>
										<div class="col-sm-6">
											
											    <p class="card-text-sub-news">
											    	<a href="{{url('post-detail')}}/{{ $post_val->post_slug ?? $post_val->id }}" title="{{$post_val->time ?? '' }}" >
											    	{!! $post_val->post_title ?? '' !!}
											    	</a>
											    </p>
											    <div class="below-entry-meta">
												<span class="posted-on">
														<i class="fa fa-calendar"></i>
														<time class="entry-date published" datetime="{{$post_val->date ?? '' }}"></time>{{$post_val->created_at ?? '' }}
												</span>                       
												</div>
										</div>
									</div>
									
								  
								</div>
							</div>
								
							@endif
							
							@empty
							@endforelse
					</div>
				</div>

				
				
			</div>
			@empty
			@endforelse
			
		</div><!-- Left side content End -->
		<div class=" col-xs-12 col-sm-4 col-md-4 col-lg-4">
			@php
			$side_menus = \App\Models\HomePageSetup::with(['menu'])->where('block_type',2)
												->where('status',1)
												->orderBy('serial','ASC')
												->get();
			@endphp
			@forelse($side_menus as $side_key=>$side_val)
			<h3 class="widget-title mt-1">
				<span>{!! $side_val->menu->menu_name ?? '' !!}</span>
			</h3>
			<div class="row">
				@php
				$side_posts = \App\Models\Post::with(['_images'])->where('menu_id',$side_val->id)
											->where('status',1)
											->orderBy('created_at','DESC')
											->orderBy('position','asc')
											->limit($blog_data->_limit ?? 5)
											->get();

				@endphp
				@forelse($side_posts as $sb_key=>$sb_val)
				@php
							$images = $sb_val->_images ?? [];
							$image_link = $images[0]->image ?? '';
							
							@endphp
				<div class="col-sm-12 mt-1">
					<div class="card" style="width: 100%;">
						<div class="row ">
										<div class="col-sm-6">
											@if($sb_val->image_hide_show==1 && $image_link !='' )
												<a href="{{url('post-detail')}}/{{ $sb_val->post_slug ?? $sb_val->id }}" title="{{$sb_val->time ?? '' }}" >
													  <img class="card-img-top side-image" src="{{asset('/')}}/{{$image_link}}" alt="{!! $sb_val->post_title ?? '' !!}">
													</a>
											  @endif
										</div>
										<div class="col-sm-6">
											
											    <p class="card-text-sub-news">
											    	<a href="{{url('post-detail')}}/{{ $sb_val->post_slug ?? $sb_val->id }}" title="{{$sb_val->time ?? '' }}" >
											    	{!! $sb_val->post_title ?? '' !!}
											    	</a>
											    </p>
											    <div class="below-entry-meta">
												<span class="posted-on">
														<i class="fa fa-calendar"></i>
														<time class="entry-date published" datetime="{{$sb_val->date ?? '' }}"></time>{{$sb_val->created_at ?? '' }}
												</span>                       
												</div>
										</div>
									</div>
					  
					  
					</div>
				</div>
				@empty
				@endforelse
				
			</div>
			@empty
			@endforelse
		</div><!-- Right Side bar End-->
	</div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop