<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>@yield('title','') | Tashfia Export</title>
    <!-- initiate head with meta tags, css and script -->
    @include('layouts.backend.partial.include.head')

    <style>
        .background {
            background-image: url({{asset('backend/img/dashboard_background.png')}});
            background-position: left top;
            background-repeat: no-repeat;
            background-position-x: 16%;
            background-size: 30% 72%;
            background-attachment: fixed;
            display: inline-block;
            width: 100%;
        }

        .sidebar_background {
            background-image: url({{asset('backend/img/sidebar_background.png')}});
            background-position: right bottom;
            background-repeat: no-repeat;
            background-size: cover;
            background-color: #390871;
        }
    </style>

</head>
<body id="app">
<div class="wrapper">
    <!-- initiate header-->
    @include('layouts.backend.partial.include.header')
    <div class="page-wrap">
        <!-- initiate sidebar-->
        @include('layouts.backend.partial.include.sidebar')

        <div class="main-content background">
            <!-- yeild contents here -->
            @yield('content')
        </div>

        <!-- initiate chat section-->
        @include('layouts.backend.partial.include.chat')


    <!-- initiate footer section-->
        @include('layouts.backend.partial.include.footer')

    </div>
</div>

<!-- initiate modal menu section-->
@include('layouts.backend.partial.include.modalmenu')

<!-- initiate scripts-->
@include('layouts.backend.partial.include.script')
</body>
</html>
