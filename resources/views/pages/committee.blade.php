@extends('layouts.app')
@section('title',$settings->title ?? '' )

@section('content')

@php
	 $committee_members = $data->committee_members ?? [];
	 
@endphp

<div class="container-fluid mt-1">
	

<section class="blog-section mt-2"> <!-- Slider Start -->

	<div class="row">
		<div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
			
			
			<h3 class="widget-title mt-1" >{!! $data->name ?? '' !!}</h3>
			
				<div class="row">
					@forelse($committee_members as $com_key=>$com_val)
					
					
						<div class="col-xs-6 col-sm-3 col-md-3 mt-1" >
							<div class="card" style="width: 100%;">
						              <img style="width: 100%;height: auto;padding: 5px;" src="{{asset('/')}}/{{$com_val->_member->member_image ?? '' }}" alt="{{$com_val->_member->first_name ?? ''}}">

						              <div class="card-body">
						                <h5 class="card-title text-center">{{$com_val->_member->first_name ?? ''}} {{$com_val->_member->last_name ?? ''}}</h5>
						                <p class="card-text text-center">
						                  {{$com_val->_designation->name ?? ''}}
						                </p>
						               
						              </div>
						            </div>
			                  
			            </div> 
					 
			                
			                @empty
			                @endforelse
				    
			</div>

			

			
			
		</div><!-- Left side content End -->

		
	</div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop

