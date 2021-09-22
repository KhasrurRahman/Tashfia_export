<div class="app-sidebar">
    <div class="sidebar-header">
        <a class="header-brand" href="{{route('admin.adminDashboard')}}">
            <div class="logo-img">
{{--                <img src="{{ asset('backend/img/logo_2.png')}}" class="header-brand-img">--}}
                <h2>Tashfia Export</h2>
            </div>
        </a>
        <div class="sidebar-action"><i class="ik ik-arrow-left-circle"></i></div>
        <button id="sidebarClose" class="nav-close"><i class="ik ik-x"></i></button>
    </div>
    <div class="sidebar-content sidebar_background">
        <div class="nav-container">
            <nav id="main-menu-navigation" class="navigation-main">

                @foreach(\App\Http\Controllers\Admin\MenuController::getMainMenu() as $menu)
                    @if(count($menu->childs))
                        <div class="nav-item has-sub">
                            <a href="javascript:void(0)"><i class="ik {{$menu->menu_icon_class}}"></i><span>{{$menu->menu_name}}</span></a>
                            <div class="submenu-content">
                                @foreach($menu->childs as $secondLevel)

                                    @if(count(\App\Http\Controllers\Admin\MenuController::getLevel3Childern($secondLevel->id)))
                                        <div class="nav-item  has-sub">
                                            <a href="javascript:void(0)" class="menu-item">{{$secondLevel->menu_name}}</a>
                                            @foreach(\App\Http\Controllers\Admin\MenuController::getLevel3Childern($secondLevel->id) as $ThirdMenu)
                                                <div class="submenu-content">
                                                    <a href="javascript:void(0)" class="menu-item">{{$ThirdMenu->menu_name}}</a>
                                                </div>
                                            @endforeach
                                        </div>
                                    @else
                                        <a href="javascript:void(0)" class="menu-item">{{$secondLevel->menu_name}}</a>
                                    @endif

                                @endforeach
                            </div>
                        </div>

                    @else
                        <div class="nav-item {{Request::is('*/'.$menu->route->url.'')?'active': ''}}">
                            <a href="{{route('admin.'.$menu->route->url.'')}}"><i
                                    class="ik ik-home"></i><span>{{$menu->menu_name}}</span></a>
                        </div>
                    @endif
                @endforeach
                

                <div class="nav-lavel">Role & Permission</div>

                @if(count(menu_check('Menu')) !== 0)
                    <div class="nav-item {{Request::is('*/menu/*')?'active open': ''}} has-sub">
                        <a href="#"><i class="ik ik-activity"></i><span>Menu Creation</span></a>
                        <div class="submenu-content">
                            <a href="{{route('admin.menu/menu_create')}}" class="menu-item {{Request::is('*/*/menu_create')?'active': ''}}">Create Menu</a>
                            <a href="{{route('admin.menu/all_menu')}}" class="menu-item {{Request::is('*/*/all_menu')?'active': ''}}">All Menu</a>
                        </div>
                    </div>
                @endif

                @if(count(menu_check('Route')) !== 0)
                    <div class="nav-item {{Request::is('*/dynamic_route')?'active': ''}}">
                        <a href="{{route('admin.dynamic_route')}}"><i class="ik ik-check-circle"></i><span>Module/Route</span></a>
                    </div>
                @endif

                @if(count(menu_check('Role')) !== 0)
                    <div class="nav-item {{Request::is('*/role/*')?'active open': ''}} has-sub">
                        <a href="#"><i class="ik ik-activity"></i><span>Roles</span></a>
                        <div class="submenu-content">

                            <a href="{{route('admin.role/all_role')}}" class="menu-item {{Request::is('*/*/all_role')?'active': ''}}">All
                                role</a>
                            <a href="{{route('admin.role/add_role')}}" class="menu-item {{Request::is('*/*/add_role')?'active': ''}}">Add
                                role</a>

                        </div>
                    </div>
                @endif

                @if(count(menu_check('User')) !== 0)
                    <div class="nav-item {{Request::is('*/all_user')?'active': ''}}">
                        <a href="{{route('admin.all_user')}}"><i class="ik ik-user-check"></i><span>Users</span></a>
                    </div>
                @endif


            </nav>
        </div>
    </div>
</div>
