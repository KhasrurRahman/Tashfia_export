@extends('layouts.backend.pdf.invoice_app')
@section('title','Profit Loss Invoice')
@push('invoice_body')
    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>
    <table class="invoice_table">
        <tr>
            <th>SL</th>
            <th>Date</th>
            <th>Customer Name</th>
            <th>Sales Amount</th>
            <th>Profit/loss</th>
        </tr>

        @foreach($profit_loss as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{date("d/m/y", strtotime($data->created_at))}}</td>
                <td>{{$data->customer->name}}</td>
                <td style="text-align: right">{{$data->total_price}}</td>
                <td style="text-align: right">{{$data->profit_or_loss}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">Total</td>
            <td style="text-align: right">{{$profit_loss->sum('total_price')}} TK</td>
            <td style="text-align: right">{{$profit_loss->sum('profit_or_loss')}} TK</td>
        </tr>
@endpush
