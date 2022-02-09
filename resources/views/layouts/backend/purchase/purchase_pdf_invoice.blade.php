@extends('layouts.backend.pdf.invoice_app')
@section('title','Purchase history Invoice')
@push('invoice_body')
    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>
    <table class="invoice_table">
        <tr>
            <th>ID</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Unit price</th>
            <th>Purchase Price</th>
            <th>Actual Price</th>
        </tr>

        @foreach($purchase_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td style="text-align: left">{{$data->product->chalan_no}}</td>
                <td>{{$data->quantity}}</td>
                <td>{{$data->unit_price}}</td>
                <td>{{$data->total_purchas_price}}</td>
                <td>{{$data->actual_purchas_price}}</td>
            </tr>
        @endforeach
        <tfoot>
        <tr>
            <td colspan="2">Total</td>
            <td>{{$total_quantity}} KG</td>
            <td></td>
            <td>{{$total_purchase_price}} TK</td>
            <td>{{$total_actual_purchase_price}} TK</td>
        </tr>
        </tfoot>
@endpush
