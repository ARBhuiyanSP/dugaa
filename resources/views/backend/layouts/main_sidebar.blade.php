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
          
          

          <li class="nav-item {{ Route::is('slider.*') || Route::is('home-page-setup.*')   ? 'menu-is-opening menu-open' : '' }}">
            
            <a href="#" class="nav-link {{ Route::is('slider.*') ||  Route::is('home-page-setup.*')    ? 'active' : '' }}">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Home Page
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               @can('slider-list')
              <li class="nav-item">
                <a href="{{url('slider')}}" class="nav-link {{Route::is('slider.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Slider</p>
                </a>
              </li>
              @endcan

               @can('home-page-setup')
              <li class="nav-item">
                <a href="{{url('home-page-setup')}}" class="nav-link {{Route::is('home-page-setup.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Home Page Setup</p>
                </a>
              </li>
              @endcan
               
              
              
            </ul>
          </li>

          <li class="nav-item {{ Route::is('countries.*') || Route::is('exam-session.*') || Route::is('degrees.*') || Route::is('paying-system.*') || Route::is('year-batch.*') || Route::is('membership-type.*') || Route::is('gender.*')  || Route::is('member-info.*')   ? 'menu-is-opening menu-open' : '' }}">
            
            <a href="#" class="nav-link {{ Route::is('countries.*') ||  Route::is('exam-session.*') ||  Route::is('degrees.*') ||  Route::is('paying-system.*') ||  Route::is('year-batch.*') ||  Route::is('membership-type.*') ||  Route::is('gender.*') ||  Route::is('member-info.*')   ? 'active' : '' }}">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Membar Info Section
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               @can('member-info-list')
              <li class="nav-item">
                <a href="{{url('member-info')}}" class="nav-link {{Route::is('member-info.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Member Information</p>
                </a>
              </li>
              @endcan
               @can('countries-list')
              <li class="nav-item">
                <a href="{{url('countries')}}" class="nav-link {{Route::is('countries.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Country</p>
                </a>
              </li>
              @endcan

               @can('degrees-list')
              <li class="nav-item">
                <a href="{{url('degrees')}}" class="nav-link {{Route::is('degrees.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Degree</p>
                </a>
              </li>
              @endcan
               @can('exam-session-list')
              <li class="nav-item">
                <a href="{{url('exam-session')}}" class="nav-link {{Route::is('exam-session.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Exam Session</p>
                </a>
              </li>
              @endcan
               @can('paying-system-list')
              <li class="nav-item">
                <a href="{{url('paying-system')}}" class="nav-link {{Route::is('paying-system.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Paying System Method</p>
                </a>
              </li>
              @endcan
               @can('year-batch-list')
              <li class="nav-item">
                <a href="{{url('year-batch')}}" class="nav-link {{Route::is('year-batch.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Year Batch</p>
                </a>
              </li>
              @endcan
               @can('membership-type-list')
              <li class="nav-item">
                <a href="{{url('membership-type')}}" class="nav-link {{Route::is('membership-type.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Membership Type</p>
                </a>
              </li>
              @endcan
               @can('gender-list')
              <li class="nav-item">
                <a href="{{url('gender')}}" class="nav-link {{Route::is('gender.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Gender</p>
                </a>
              </li>
              @endcan
              
              
            </ul>
          </li>


         
          @can('admin-post-list')
          @php
          $current = request()->path();
          $url_paths =  explode("/", $current);
          $first_path=$url_paths[0] ?? '';

          @endphp
          <li class="nav-item {{ ($first_path=='admin-post') || ($first_path=='admin-post-create')  || ($first_path=='admin-post-edit')    ? 'menu-is-opening menu-open' : '' }}">
              <a href="#" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
                  <p>
                  Page And Post
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
              @can('role-list')
              <li class="nav-item">
                <a href="{{url('roles')}}" class="nav-link {{Route::is('roles.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Role</p>
                </a>
              </li>
              @endcan
              @can('user-list')
              <li class="nav-item">
                <a href="{{url('users')}}" class="nav-link {{Route::is('users.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Users</p>
                </a>
              </li>
              @endcan
              
            </ul>
          </li>
          
         
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>