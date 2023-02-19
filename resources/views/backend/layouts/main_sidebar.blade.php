<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{url('/')}}" class="brand-link">
      
      <span class="brand-text font-weight-light">{{$settings->name ?? '' }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

@php
    $current_url = Route::current()->getName();
@endphp

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
          @can('own-profile-update')
          <li class="nav-item ">
            <a href="{{url('own-profile')}}" class="nav-link {{ ( $current_url=='own-profile' ) ? 'nest_active' : '' }}"  >
              <i class="fa fa-credit-card nav-icon" aria-hidden="true"></i>
              <p>
                  {{ __('label.profile') }}
              </p>
            </a>
          </li>
          @endcan

           @can('master-menu')
          <li class="nav-item {{ Route::is('roles.*') || Route::is('users.*') || Route::is('admin-settings') || Route::is('main-menu.*') || ( $current_url=='social_media' ) || Route::is('document-upload.*') || Route::is('slider.*') || Route::is('home-page-setup.*') ? 'menu-is-opening menu-open' : '' }}">
            <a href="#" class="nav-link {{ Route::is('roles.*') || Route::is('users.*') || Route::is('admin-settings') || Route::is('main-menu.*')  || Route::is('document-upload.*')   || Route::is('home-page-setup.*')  || ( $current_url=='social_media' )  || Route::is('slider.*')   ? 'active' : '' }}">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                 {{ __('label.Master Setup') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @can('role-list')
              <li class="nav-item">
                <a href="{{url('roles')}}" class="nav-link {{Route::is('roles.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Role') }}</p>
                </a>
              </li>
              @endcan
              @can('user-list')
              <li class="nav-item">
                <a href="{{url('users')}}" class="nav-link {{Route::is('users.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Users') }}</p>
                </a>
              </li>
              @endcan
               @can('admin-settings')
              <li class="nav-item">

                <a href="{{url('admin-settings')}}" class="nav-link {{Route::is('admin-settings')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.General Settings') }}</p>
                </a>
              </li>
              @endcan
              @can('social_media-list')
              <li class="nav-item">

                <a href="{{url('social_media')}}" class="nav-link {{ ( $current_url=='social_media' )  ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Social Media') }}</p>
                </a>
              </li>
              @endcan
              @can('document-upload-list')
              <li class="nav-item">
                <a href="{{url('document-upload')}}" class="nav-link {{Route::is('document-upload.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Downloadable Document') }}</p>
                </a>
              </li>
              @endcan
              @can('main-menu-list')
              <li class="nav-item">
                <a href="{{url('main-menu')}}" class="nav-link {{Route::is('main-menu.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Menu') }}</p>
                </a>
              </li>
              @endcan
              @can('slider-list')
              <li class="nav-item">
                <a href="{{url('slider')}}" class="nav-link {{Route::is('slider.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Slider') }}</p>
                </a>
              </li>
              @endcan

              @can('home-page-setup')
              <li class="nav-item">
                <a href="{{url('home-page-setup')}}" class="nav-link {{Route::is('home-page-setup.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.Home Page Setup') }}</p>
                </a>
              </li>
              @endcan
               
              
              
            </ul>
          </li>
    @endcan

         

          
          
          



          
@can('alumni-section')
          <li class="nav-item {{ Route::is('countries.*') || Route::is('exam-session.*') || Route::is('degrees.*') || Route::is('paying-system.*') || Route::is('year-batch.*') || Route::is('membership-type.*') || Route::is('gender.*')  || Route::is('member-info.*') || Route::is('committee-history.*') || Route::is('committee.*') || Route::is('designations.*') || Route::is('event-management.*')   ? 'menu-is-opening menu-open' : '' }}">
            
            <a href="#" class="nav-link {{ Route::is('countries.*') ||  Route::is('exam-session.*') ||  Route::is('degrees.*') ||  Route::is('paying-system.*') ||  Route::is('year-batch.*') ||  Route::is('membership-type.*') ||  Route::is('gender.*') ||  Route::is('member-info.*') || Route::is('committee-history.*') || Route::is('committee.*')  || Route::is('designations.*') || Route::is('event-management.*')   ? 'active' : '' }}">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                {{ __('label.alumni-section') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               @can('member-info-list')
              <li class="nav-item">
                <a href="{{url('member-info')}}" class="nav-link {{Route::is('member-info.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Member Information</p>
                </a>
              </li>
              @endcan


               @can('committee-history-list')
              <li class="nav-item">
                <a href="{{url('committee-history')}}" class="nav-link {{Route::is('committee-history.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Committee</p>
                </a>
              </li>
              @endcan
               @can('event-management-list')
              <li class="nav-item">
                <a href="{{url('event-management')}}" class="nav-link {{Route::is('event-management.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>{{ __('label.event-management') }}</p>
                </a>
              </li>
              @endcan
               @can('designations-list')
              <li class="nav-item">
                <a href="{{url('designations')}}" class="nav-link {{Route::is('designations.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Committee Designations</p>
                </a>
              </li>
              @endcan
               @can('countries-list')
              <li class="nav-item">
                <a href="{{url('countries')}}" class="nav-link {{Route::is('countries.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Country</p>
                </a>
              </li>
              @endcan

               @can('degrees-list')
              <li class="nav-item">
                <a href="{{url('degrees')}}" class="nav-link {{Route::is('degrees.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Degree</p>
                </a>
              </li>
              @endcan
               @can('exam-session-list')
              <li class="nav-item">
                <a href="{{url('exam-session')}}" class="nav-link {{Route::is('exam-session.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Exam Session</p>
                </a>
              </li>
              @endcan
               @can('paying-system-list')
              <li class="nav-item">
                <a href="{{url('paying-system')}}" class="nav-link {{Route::is('paying-system.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Paying System Method</p>
                </a>
              </li>
              @endcan
               @can('year-batch-list')
              <li class="nav-item">
                <a href="{{url('year-batch')}}" class="nav-link {{Route::is('year-batch.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Year Batch</p>
                </a>
              </li>
              @endcan
               @can('membership-type-list')
              <li class="nav-item">
                <a href="{{url('membership-type')}}" class="nav-link {{Route::is('membership-type.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Membership Type</p>
                </a>
              </li>
              @endcan
               @can('gender-list')
              <li class="nav-item">
                <a href="{{url('gender')}}" class="nav-link {{Route::is('gender.*')   ? 'active' : '' }}">
                  <i class="fas fa-arrow-right nav-icon"></i>
                  <p>Gender</p>
                </a>
              </li>
              @endcan
              
              
            </ul>
          </li>

@endcan
         
          @can('admin-post-list')
          @php
          $url_post_pats=[];
          $current = request()->path();
          $url_paths =  explode("/", $current);
           $first_path=$url_paths[0] ?? '';
           $second_path=$url_paths[1] ?? '';

          @endphp
          <li class="nav-item {{ ($first_path=='admin-post') || ($first_path=='admin-post-create')  || ($first_path=='admin-post-edit')    ? 'menu-is-opening menu-open' : '' }}">
              <a href="#" class="nav-link  {{ ($first_path=='admin-post') || ($first_path=='admin-post-create')  || ($first_path=='admin-post-edit')  ? 'active' : '' }}">
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

            @php
          
          array_push($url_post_pats,$sval->slug ?? '');
         
          @endphp
                <li class="nav-item">
                    <a href="{{url('admin-post')}}/{!! $sval->slug ?? '' !!}" class="nav-link @if(in_array($second_path,$url_post_pats) && ($second_path==$sval->slug) ) active @endif">
                      <i class="fas fa-arrow-right nav-icon"></i><p>{!! $sval->menu_name ?? '' !!}</p>
                    </a>
                </li>
            @empty
            @endforelse

            @php
             $sub_menu_paths=[];
            $category_with_sub = \App\Models\Menu::with(['child_cat'])->where('parent_id',0)
                                  ->where('have_child',1)
                                  ->orderBy('serial','ASC')
                                  ->orderBy('menu_name','ASC')
                                  ->get();
            @endphp

      
            @forelse($category_with_sub as $key=>$cat)
              <li class="nav-item " id="nav_itenm_sub_menu_parrent__{{$key}}">
                  <a href="#" class="nav-link " id="sub_menu_parrent__{{$key}}">
                    <i class="fas fa-arrow-right nav-icon"></i>
                      <p>{!! $cat->menu_name ?? '' !!}<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview" >
                  @php
                  $child_cat = $cat->child_cat ?? [];
                  @endphp
                  @forelse($child_cat as $ch_key=>$ch_val)
          @php
          array_push($sub_menu_paths,$ch_val->slug ?? '');
          @endphp
                  <li class="nav-item">
                    <a  href="{{url('admin-post')}}/{!! $ch_val->slug ?? '' !!}"
                     class="nav-link @if(in_array($second_path,$sub_menu_paths) && ($second_path==$ch_val->slug) ) active @endif">
                      <i class="far fa-dot-circle nav-icon"></i><p>{!! $ch_val->menu_name ?? '' !!}</p>
                    </a>
                  </li>
                  @if(in_array($second_path,$sub_menu_paths) && ($second_path==$ch_val->slug) )
                  <script type="text/javascript">
                        var __key_id = 'sub_menu_parrent__'+'{{$key}}';
                        var nav_idtem_id = '#nav_itenm_sub_menu_parrent__'+'{{$key}}';
                        
                  </script>
                   @endif

                  @empty
                  @endforelse
               
                </ul>
              </li>
              @empty
              @endforelse
              
              </ul>
          </li>

          @endcan
          
         
          
          
         
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>