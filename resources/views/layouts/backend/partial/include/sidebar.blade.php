<div class="app-sidebar">
    <div class="sidebar-header">
        <a class="header-brand" href="{{route('admin.adminDashboard')}}">
            <div class="logo-img">
                <img height="30" src="{{ asset('img/logo_white.png')}}" class="header-brand-img" title="RADMIN">
            </div>
        </a>
        <div class="sidebar-action"><i class="ik ik-arrow-left-circle"></i></div>
        <button id="sidebarClose" class="nav-close"><i class="ik ik-x"></i></button>
    </div>

    <div class="sidebar-content">
        <div class="nav-container">
            <nav id="main-menu-navigation" class="navigation-main">
                <div class="nav-item {{Request::is('*/adminDashboard')?'active': ''}}">
                    <a href="{{route('admin.adminDashboard')}}"><i class="ik ik-home"></i><span>Dashboard</span></a>
                </div>

                <a href="" class="list-group-item" >
                    <span>Role And Permission</span>
                </a>

                @if(count(menu_check('Route')) !== 0)
                    <div class="nav-item {{Request::is('*/dynamic_route')?'active': ''}}">
                        <a href="{{route('admin.dynamic_route')}}"><i class="ik ik-check-circle"></i><span>Module/Route</span></a>
                    </div>
                @endif

                @if(count(menu_check('Role')) !== 0)
                    <div class="nav-item {{Request::is('*/role/*')?'active open': ''}} has-sub">
                        <a href="#"><i class="ik ik-activity"></i><span>Roles</span></a>
                        <div class="submenu-content">

                            <a href="{{route('admin.role/all_role')}}" class="menu-item {{Request::is('*/*/all_role')?'active': ''}}">All role</a>
                            <a href="{{route('admin.role/add_role')}}" class="menu-item {{Request::is('*/*/add_role')?'active': ''}}">Add role</a>

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
