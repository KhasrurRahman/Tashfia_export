@extends('layouts.backend.partial.app')
@section('title','Deposits and expenses Report')
@push('css')
@endpush
@section('main_menu','HOME')
@section('active_menu','Deposits and expenses Report')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.report.deposit_expense.deposit_expense_search')
        </div>
    </div>

@endsection
@push('js')
@endpush
