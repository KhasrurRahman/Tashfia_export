<header class="header-top background" header-theme="light">
    <div class="container-fluid">
        <div class="d-flex justify-content-between">
            <div class="top-menu d-flex align-items-center">
                <button type="button" class="btn-icon mobile-nav-toggle d-lg-none"><span></span></button>
                <div class="header-search">
                    <div class="input-group">
                        <span class="input-group-addon search-close"><i class="ik ik-x"></i></span>
                        <input type="text" class="form-control">
                        <span class="input-group-addon search-btn"><i class="ik ik-search"></i></span>
                    </div>
                </div>
                <button type="button" id="navbar-fullscreen" class="nav-link"><i class="ik ik-maximize"></i></button>
            </div>
            <div class="top-menu d-flex align-items-center">
                <div class="dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="notiDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                class="ik ik-bell"></i><span class="badge bg-danger">3</span></a>
                    <div class="dropdown-menu dropdown-menu-right notification-dropdown" aria-labelledby="notiDropdown">
                        <h4 class="header">{{ __('Notifications')}}</h4>
                        <div class="notifications-wrap">
                            <a href="#" class="media">
                                <span class="d-flex">
                                    <i class="ik ik-check"></i>
                                </span>
                                <span class="media-body">
                                    <span class="heading-font-family media-heading">{{ __('Invitation accepted')}}</span>
                                    <span class="media-content">{{ __('Your have been Invited ...')}}</span>
                                </span>
                            </a>
                            <a href="#" class="media">
                                <span class="media-body">
                                    <span class="heading-font-family media-heading">{{ __('Steve Smith')}}</span>
                                    <span class="media-content">{{ __('I slowly updated projects')}}</span>
                                </span>
                            </a>
                        </div>
                        <div class="footer"><a href="javascript:void(0);">{{ __('See all activity')}}</a></div>
                    </div>
                </div>

                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="avatar"
                                                                                                                                                               src="{{ asset('backend/img/user.jpg')}}"
                                                                                                                                                               alt=""></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="{{route('admin.admin/change_password')}}"><i class="ik ik-user dropdown-icon"></i> Change Password</a>
                        <a class="dropdown-item" href="{{ url('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <i class="ik ik-power dropdown-icon"></i>
                            {{ __('Logout')}}
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
