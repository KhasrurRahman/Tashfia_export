<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>@yield('title','') | Tashfia Export</title>
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

    @include('layouts.backend.partial.include.header')
    <div class="page-wrap">

        @include('layouts.backend.partial.include.sidebar')

        <div class="main-content background">

            @yield('content')
        </div>


        @include('layouts.backend.partial.include.chat')

        @include('layouts.backend.partial.include.footer')

    </div>
</div>


@include('layouts.backend.partial.include.modalmenu')


@include('layouts.backend.partial.include.script')
</body>
</html>
