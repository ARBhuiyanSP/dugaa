<div class="logo">
  <img class="logo_image" src="{{asset('/')}}/{{$settings->logo ?? '' }}">
</div>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="{{url('/')}}">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      @php
      $nav_menus = \App\Models\Menu::with(['child_cat'])->where('status',1)
                                      ->where('is_main_menu_show',1)
                                      ->where('parent_id',0)
                                      ->orderBy('serial','ASC')
                                      ->get();
      @endphp

      @forelse($nav_menus as $nav_key=>$nav_val)
      @if($nav_val->have_child==0)
      <li class="nav-item active">
        <a class="nav-link" href="{{url('page')}}/{!! $nav_val->slug ?? '' !!}">{{ $nav_val->menu_name ?? '' }} <span class="sr-only">(current)</span></a>
      </li>
      @else
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            {{ $nav_val->menu_name ?? '' }}
          </a>
          @php
          $child_cats = $nav_val->child_cat ?? [];

          @endphp
          @if(sizeof($child_cats) > 0)
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            @forelse($child_cats as $child_key=>$child_val)
            <a class="dropdown-item" href="{{url('page')}}/{!! $child_val->slug ?? '' !!}">
              {!! $child_val->menu_name ?? '' !!}
            </a>
            @empty
            @endforelse
          </div>
          @endif
        </li>
      @endif
      
     
      @empty
      @endforelse
      
    </ul>
    
  </div>
</nav>
