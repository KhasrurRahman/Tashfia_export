@extends('layouts.backend.pdf.invoice_app')
@section('title','Purchase history Invoice')
@push('invoice_body')

    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>
    <table class="invoice_table" style="font-size: 14px">
        <tr>
            <th>ID</th>
            <th>Supplier Name</th>
            <th>Product</th>
            <th>Date</th>
            <th>Quantity</th>
            <th>Unit price</th>
            <th>Purchase Price</th>
            <th>Actual Price</th>
        </tr>

        @foreach($purchase_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td style="text-align: left">{{$data->supplier->name}}</td>
                <td style="text-align: left">{{$data->product->chalan_no}}</td>
                <td style="text-align: left">{{date("d/M/y", strtotime($data->created_at))}}</td>
                <td>{{$data->main_quantity}}</td>
                <td>{{$data->unit_price}}</td>
                <td>{{$data->total_purchas_price}}</td>
                <td>{{$data->actual_purchas_price}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="4">Total</td>
            <td>{{$total_quantity}} KG</td>
            <td></td>
            <td>{{$total_purchase_price}} TK</td>
            <td>{{$total_actual_purchase_price}} TK</td>
        </tr>
@endpush
