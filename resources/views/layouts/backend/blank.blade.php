@extends('layouts.backend.partial..app')
@section('title','All Users')
@push('css')
    <link rel="stylesheet" href="{{asset('assets/backend/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
@endpush
@section('main_menu','HOME')
@section('active_menu','All Users')
@section('link',route('admin.dynamic_route'))
@section('content')




@endsection
@push('js')
@endpush
