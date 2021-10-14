<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>{{ __('Login | Sukhtara ERP system') }}</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="{{ asset('backend/favicon.png') }}"/>

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('backend/plugins/bootstrap/dist/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/ionicons/dist/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/icon-kit/dist/css/iconkit.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/perfect-scrollbar/css/perfect-scrollbar.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/dist/css/theme.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/dist/css/theme-image.css') }}">
    <script src="{{ asset('backend/src/js/vendor/modernizr-2.8.3.min.js') }}"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="auth-wrapper">
    <div class="container-fluid h-100">
        <div class="row flex-row h-100 bg-white">
            <div class="col-xl-4 col-lg-6 col-md-7 my-auto p-0">
                <div class="authentication-form mx-auto">
{{--                    <div class="logo-centered">--}}
{{--                        <a href=""><img src="{{ asset('backend/img/logo.png') }}" alt=""></a>--}}
{{--                    </div>--}}
                    <h3 style="font-size: 34px; color: #250846; font-weight: bold;">Sukhtara ERP system</h3>
                    <p>{{ __('Welcome Back! Login to your account to continue') }}</p>
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group">
                            <input id="email" type="email" placeholder="Email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                            <i class="ik ik-user"></i>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <input id="password" type="password" placeholder="Password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                            <i class="ik ik-lock"></i>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                        <div class="row">
                            <div class="col text-left">
                                <label class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="item_checkbox" name="item_checkbox" value="option1">
                                    <span class="custom-control-label">&nbsp;{{ __('Remember Me') }}</span>
                                </label>
                            </div>
                            <div class="col text-right">
                                <a class="btn btn-link" href="{{url('password/forget')}}">
                                    {{ __('Forgot Password?') }}
                                </a>
                            </div>
                        </div>
                        <div class="sign-btn text-center">
                            <button class="btn btn-theme">{{ __('Sign In') }}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xl-8 col-lg-6 col-md-5 p-0 d-md-block d-lg-block d-sm-none d-none">
                <div class="lavalite-bg" >
                    <div class="lavalite-overlay"></div>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="{{ asset('backend/src/js/vendor/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('backend/plugins/popper.js/dist/umd/popper.min.js') }}"></script>
<script src="{{ asset('backend/plugins/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('backend/plugins/perfect-scrollbar/dist/perfect-scrollbar.min.js') }}"></script>
<script src="{{ asset('backend/plugins/screenfull/dist/screenfull.js') }}"></script>

</body>
</html>
