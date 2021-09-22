@extends('layouts.partial.app')
@section('title','Dashboard')
@push('css')
@endpush
@section('main_menu','HOME')
@section('active_menu','Dashboard')
@section('link',route('admin.dynamic_route'))
@section('content')


    <div class="container-fluid">
    	Dashboard..................
    </div>

@endsection
@push('js')
@endpush
