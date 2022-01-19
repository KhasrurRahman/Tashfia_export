<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="csrf-token" content="{{ csrf_token() }}"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="{{ asset('backend/img/fav_icon.png')}}"/>
<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800" rel="stylesheet">
<script src="{{ asset('backend/js/app.js') }}"></script>
<link rel="stylesheet" href="{{ asset('backend/css/all.css') }}">
<link rel="stylesheet" href="{{ asset('backend/dist/css/theme.css') }}">
<link rel="stylesheet" href="{{ asset('backend/dist/css/custom.css') }}">
<link rel="stylesheet" href="{{ asset('backend/plugins/fontawesome-free/css/all.min.css') }}">
<link rel="stylesheet" href="{{ asset('backend/plugins/icon-kit/dist/css/iconkit.min.css') }}">
<link rel="stylesheet" href="{{ asset('backend/plugins/ionicons/dist/css/ionicons.min.css') }}">
<link rel="stylesheet" href="{{ asset('backend/css/style.css') }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<style>
    .wrapper .page-wrap .main-content .page-header .page-header-title i {
        float: left;
        width: 40px;
        height: 40px;
        border-radius: 5px;
        margin-right: 20px;
        vertical-align: middle;
        font-size: 22px;
        color: #fff;
        display: inline-flex;
        -webkit-justify-content: center;
        -moz-justify-content: center;
        -ms-justify-content: center;
        justify-content: center;
        -ms-flex-pack: center;
        -webkit-align-items: center;
        -moz-align-items: center;
        -ms-align-items: center;
        align-items: center;
        margin-top: -10px;
        -webkit-box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.5);
        -moz-box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.5);
        box-shadow: 0 2px 12px -3px rgba(0, 0, 0, 0.5);
    }
</style>
@stack('css')
