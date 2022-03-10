@extends('layouts.backend.pdf.invoice_app')
@section('title','Purchase Invoice History')
@push('invoice_body')

    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>
    <table class="invoice_table" style="font-size: 14px">
        <tr>
            <th>ID</th>
            <th>Supplier Name</th>
            <th>Product</th>
            <th>Date</th>
            <th>Quantity(kg</th>
            <th>Quantity(Pound)</th>
            <th>Unit price/Kg</th>
            <th>Total Price</th>
            <th>Total Paid</th>
            <th>Due</th>
        </tr>

        @foreach($purchase_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td style="text-align: left">{{$data->supplier->name}}</td>
                <td style="text-align: left">{{$data->product->chalan_no}}</td>
                <td style="text-align: left">{{date("d/M/y", strtotime($data->created_at))}}</td>
                <td>{{$data->main_quantity}}</td>
                <td>{{$data->main_quantity * 2.2046}}</td>
                <td>{{$data->actual_unit_price}}</td>
                <td>{{$data->actual_purchas_price}}</td>
                <td>{{$data->payment_amount}}</td>
                <td>{{$data->due}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="4">Total</td>
            <td>{{$purchase_history->sum('main_quantity')}} KG</td>
            <td>{{$purchase_history->sum('main_quantity') * 2.2046}} KG</td>
            <td></td>
            <td></td>
            <td>{{$purchase_history->sum('payment_amount')}}</td>
            <td>{{$purchase_history->sum('due')}}</td>
        </tr>
@endpush
