<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>@yield('title','') | Khajna - A Complete VAT Management Solution</title>
    @include('layouts.partial.include.head')
</head>
<body id="app">
<div class="wrapper">
    @include('layouts.partial.include.header')
    <div class="page-wrap">
        @include('layouts.partial.include.sidebar')
        <div class="main-content background">
            @yield('content')
        </div>
        @include('layouts.partial.include.chat')
        @include('layouts.partial.include.footer')
    </div>
</div>
@include('layouts.partial.include.modalmenu')
@include('layouts.partial.include.script')
</body>
</html>
