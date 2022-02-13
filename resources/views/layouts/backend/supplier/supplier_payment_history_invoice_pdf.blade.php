@extends('layouts.backend.pdf.invoice_app')
@section('title','Supplier sales history')
@push('invoice_body')
    <span style="line-height: 3px">
        <h3 style="text-align: center">Company Name:  {{$supplier->company->company_name}} </h3>
        <h3 style="text-align: center">Supplier Name:  {{$supplier->name}} </h3>
        <h3 style="text-align: center">Supplier ID:  {{$supplier->id}} </h3>
        <h3 style="text-align: center">Supplier Phone:  {{$supplier->personal_phone}} </h3>
        </span>
    <table class="invoice_table">
        <tr>
            <th>SL.</th>
            <th>Date</th>
            <th>Item</th>
            <th>Code</th>
            <th>Quantity(kG)</th>
            <th>Total purchase Price(Tk)</th>
            <th>Actual purchase Price(Tk)</th>
        </tr>

        @foreach($supplier->purchase as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                <td>{{$data->product->chalan_no}}</td>
                <td>{{$data->product->card_no}}</td>
                <td style="text-align: right">{{$data->quantity}}</td>
                <td style="text-align: right">{{$data->total_purchas_price}}</td>
                <td style="text-align: right">{{$data->actual_purchas_price}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="4">Total</td>
            <td style="text-align: right">{{$total_quantity}} KG</td>
            <td style="text-align: right">{{$total_price}} TK</td>
            <td style="text-align: right">{{$total_actual_price}} TK</td>
        </tr>
@endpush
