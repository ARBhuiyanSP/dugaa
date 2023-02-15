@php
			$side_menus = \App\Models\HomePageSetup::with(['menu'])->where('block_type',2)
												->where('status',1)
												->orderBy('serial','ASC')
												->get();
			@endphp
			@forelse($side_menus as $side_key=>$side_val)
			<h3 class="widget-title mt-1" style="border-color: #8224e3">
				<span style="background-color: #8224e3;
				color: #fff;
				font-weight: 500;
				padding-right: 5px;
				padding-left: 5px;">{!! $side_val->menu->menu_name ?? '' !!}</span>
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