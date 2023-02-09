<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{url('/')}}" class="brand-link">
      
      <span class="brand-text font-weight-light">{{$settings->name ?? '' }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
         
          <li class="nav-item">
            <a href="{{url('home')}}" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          @can('main-menu-list')
          <li class="nav-item">
            <a href="{{url('main-menu')}}" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Menu 
              </p>
            </a>
          </li>
          @endcan
          @can('admin-post-list')
          @php
          $current = request()->path();
          $url_paths =  explode("/", $current);
          $first_path=$url_paths[0] ?? '';

          @endphp
          <li class="nav-item {{ ($first_path=='admin-post')  ? 'menu-is-opening menu-open' : '' }}">
              <a href="#" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
                  <p>
                  Menu/Page
                  <i class="right fas fa-angle-left"></i>
                  </p>
              </a>
              <ul class="nav nav-treeview" >
                @php
            $category_without_sub = \App\Models\Menu::with(['child_cat'])->where('parent_id',0)
                  ->where('have_child',0)
                  ->orderBy('serial','ASC')
                  ->orderBy('menu_name','ASC')
                  ->get();
            @endphp
            @forelse($category_without_sub as $skey=>$sval)
                <li class="nav-item">
                    <a href="{{url('admin-post')}}/{!! $sval->slug ?? '' !!}" class="nav-link">
                      <i class="far fa-circle nav-icon"></i><p>{!! $sval->menu_name ?? '' !!}</p>
                    </a>
                </li>
            @empty
            @endforelse

            @php
            $category_with_sub = \App\Models\Menu::with(['child_cat'])->where('parent_id',0)
                                  ->where('have_child',1)
                                  ->orderBy('serial','ASC')
                                  ->orderBy('menu_name','ASC')
                                  ->get();
            @endphp
            @forelse($category_with_sub as $key=>$cat)
              <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                      <p>{!! $cat->menu_name ?? '' !!}<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview" style="display: none;">
                  @php
                  $child_cat = $cat->child_cat ?? [];
                  @endphp
                  @forelse($child_cat as $ch_key=>$ch_val)
                  <li class="nav-item">
                    <a  href="{{url('admin-post')}}/{!! $ch_val->slug ?? '' !!}" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i><p>{!! $ch_val->menu_name ?? '' !!}</p>
                    </a>
                  </li>
                  @empty
                  @endforelse
               
                </ul>
              </li>
              @empty
              @endforelse
              
              </ul>
          </li>

          @endcan
       
          
          <li class="nav-item {{ Route::is('roles.*') || Route::is('users.*') || Route::is('admin-settings') || Route::is('banners.*') || Route::is('social_media.*') || Route::is('board.*') || Route::is('profession.*')  ? 'menu-is-opening menu-open' : '' }}">
            <a href="#" class="nav-link {{ Route::is('roles.*') || Route::is('users.*') || Route::is('admin-settings') || Route::is('banners.*')  || Route::is('profession.*')  || Route::is('front-banner.*')   ? 'active' : '' }}">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Settings
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               @can('admin-settings')
              <li class="nav-item">

                <a href="{{url('admin-settings')}}" class="nav-link {{Route::is('admin-settings')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>General Settings</p>
                </a>
              </li>
              @endcan
              @can('social_media-list')
              <li class="nav-item">

                <a href="{{url('social_media')}}" class="nav-link {{Route::is('social_media.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Social Media</p>
                </a>
              </li>
              @endcan
              <li class="nav-item">
                <a href="{{url('roles')}}" class="nav-link {{Route::is('roles.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Role</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{url('users')}}" class="nav-link {{Route::is('users.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Users</p>
                </a>
              </li>
              
            </ul>
          </li>
          
         
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>