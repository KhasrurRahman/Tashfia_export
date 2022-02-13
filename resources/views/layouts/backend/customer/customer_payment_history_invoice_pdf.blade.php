@extends('layouts.backend.pdf.invoice_app')
@section('title','Customer sales history')
@push('invoice_body')
    <span style="line-height: 3px">
        <h3 style="text-align: center">Company Name:  {{$customer->company->company_name}} </h3>
        <h3 style="text-align: center">Customer Name:  {{$customer->name}} </h3>
        <h3 style="text-align: center">Customer ID:  {{$customer->id}} </h3>
        <h3 style="text-align: center">Customer Phone:  {{$customer->personal_phone}} </h3>
        </span>
    <table class="invoice_table">
        <tr>
            <th>SL.</th>
            <th>Date</th>
            <th>Sales Code</th>
            <th>Total Amount</th>
            <th>Paid Amount</th>
            <th>Due</th>
        </tr>

        @foreach($sales_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                <td style="text-align: center">{{$data->sales_code}}</td>
                <td style="text-align: center">{{$data->total_price}}</td>
                <td style="text-align: center">{{$data->payment_amount}}</td>
                <td style="text-align: center">{{$data->due}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">Total</td>
            <td style="text-align: center">{{$total_amount}} TK</td>
            <td style="text-align: center">{{$total_payment}} TK</td>
            <td style="text-align: center">{{$total_due}} TK</td>
        </tr>
@endpush
