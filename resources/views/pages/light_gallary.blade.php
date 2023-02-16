<div class="gallery-container section-container">
	        <div class="container">
	            <div class="row">
	                <div class="col gallery section-description wow fadeIn">
	                    <h2>Gallery</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col">
	            		<!-- First row of images -->
	            		<div class="row">
	            			@forelse($committee_members as $com_key=>$com_val)
	            			@php
	            			//dump($com_val->_member);
	            			@endphp
	            			<div class="col-md-4 gallery-box wow fadeInDown" >
	            				<div data-toggle="modal" data-target="#myModal">
		                			<img class="d-block w-100" src="{{asset('/')}}/{{$com_val->_member->member_image}}" alt="{{$com_val->_member->name}}" data-target="#myCarousel" data-slide-to="{{$com_key}}">
		                			<div>
		                				<h3>{{$com_val->_member->name}}</h3>
		                			</div>
		                		</div>
		                    </div>
		                    @empty
		                    @endforelse
		                    
	            		</div>
	            		
	            	</div>
	            </div>
	        </div>
        </div>
        
        
		<div class="modal fade" id="myModal" tabindex="-1" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					
						<!-- Carousel -->
						<div id="myCarousel" class="carousel slide">
							<ol class="carousel-indicators">
								@forelse($committee_members as $com_key=>$com_val)
								<li data-target="#myCarousel" data-slide-to="{{$com_key}}" 
								class="@if($com_key==0)active @endif"></li>
								@empty
								@endforelse
							</ol>
							<div class="carousel-inner">
								@forelse($committee_members as $com_key=>$com_val)
								<div class="carousel-item @if($com_key ==0)active @endif">
									<img src="{{asset('/')}}/{{$com_val->_member->member_image}}" alt="{{$com_val->_member->name}}" class="d-block w-100" >
								</div>
								@empty
								@endforelse
								
								
								
							</div>
							<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>