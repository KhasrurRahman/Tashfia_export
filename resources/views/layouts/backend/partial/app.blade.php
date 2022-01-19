<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>@yield('title','') | Tashfia Export</title>
    @include('layouts.backend.partial.include.head')

</head>
<body id="app">
<div class="wrapper">

    @include('layouts.backend.partial.include.header')
    <div class="page-wrap">

        @include('layouts.backend.partial.include.sidebar')

        <div class="main-content background">
@include('layouts.backend.partial.include.page_tree')
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
