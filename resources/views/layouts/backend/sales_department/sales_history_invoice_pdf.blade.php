@extends('layouts.backend.pdf.invoice_app')
@section('title','sales History')
@push('invoice_body')
    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>
    <table class="invoice_table">
        <tr>
            <th>ID</th>
            <th>Customer Id</th>
            <th>Date</th>
            <th>Sales Code</th>
            <th>Paid Amount</th>
            <th>Due</th>
            <th>Total Amount</th>
        </tr>

        @foreach($sales_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{$data->customer->id}}</td>
                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                <td>{{$data->sales_code}}</td>
                <td>{{$data->payment_amount}}</td>
                <td>{{$data->due}}</td>
                <td>{{$data->total_price}}</td>
            </tr>
        @endforeach
        <tfoot>
        <tr>
            <td colspan="4">Total</td>
            <td>{{$total_due}} TK</td>
            <td>{{$total_payment}} TK</td>
            <td>{{$total_amount}} TK</td>
        </tr>
        </tfoot>
@endpush
