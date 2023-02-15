@extends('layouts.app')
@section('title',$settings->title ?? '' )

@section('content')


<div class="container-fluid mt-1">

<section class="blog-section mt-2"> <!-- Slider Start -->
	<div class="row">
		<div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
			@forelse($data as $key=>$value)
			@php
				$images = $value->_images ?? [];
				
			@endphp
			<h3 class="widget-title mt-1" >{!! $value->post_title ?? '' !!}</h3>
			<div class="card" style="width: 100%;">
				<div class="row">
					@forelse($images as $image_key=>$image_val)
					
					@if($image_val->is_video ==1)
						<?php echo $image_val->vedio_link; ?>
					@else
						<div class="col-xs-6 col-sm-3 col-md-3" >
			                    <a target="__blank" href="{{asset('/')}}/{{$image_val->image ?? '' }}">
			                        <img style="width: 100%;height: auto;padding: 5px;" src="{{asset('/')}}/{{$image_val->image ?? '' }}" alt="{{$image_val->title ?? ''}}">
			                    </a>
			            </div>        
			               

					@endif
					 
			                
			                @empty
			                @endforelse
				</div>      
			</div>

			

			@empty
			@endforelse
			
		</div><!-- Left side content End -->

		
	</div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop

