@extends('layouts.backend.pdf.invoice_app')
@section('title','Sales History')
@push('invoice_body')
    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>
    <table class="invoice_table">
        <tr>
            <th>ID</th>
            <th>Customer name</th>
            <th>Customer ID</th>
            <th>Date</th>
            <th>Sales Code</th>
            <th>Paid Amount</th>
            <th>Due</th>
            <th>Total Amount</th>
        </tr>

        @foreach($sales_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{$data->customer->name}}</td>
                <td>{{$data->customer->id}}</td>
                <td>{{date("d/M/y", strtotime($data->created_at))}}</td>
                <td style="text-align: right">{{$data->sales_code}}</td>
                <td style="text-align: right">{{$data->payment_amount}}</td>
                <td style="text-align: right">{{$data->due}}</td>
                <td style="text-align: right">{{$data->total_price}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="5">Total</td>
            <td style="text-align: right">{{$total_due}} TK</td>
            <td style="text-align: right">{{$total_payment}} TK</td>
            <td style="text-align: right">{{$total_amount}} TK</td>
        </tr>
@endpush
