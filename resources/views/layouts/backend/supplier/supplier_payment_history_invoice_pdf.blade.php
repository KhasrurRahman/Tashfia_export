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
            <th>Quantity(Pound)</th>
            <th>purchase Price(Tk)</th>
            <th>Paid</th>
            <th>Due</th>
        </tr>

        @foreach($supplier->purchase as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                <td>{{$data->product->chalan_no}}</td>
                <td>{{$data->product->card_no}}</td>
                <td style="text-align: left">{{$data->main_quantity}}</td>
                <td style="text-align: left">{{$data->main_quantity * 2.2046}}</td>
                <td style="text-align: left">{{$data->actual_purchas_price}}</td>
                <td style="text-align: left">{{$data->payment_amount}}</td>
                <td style="text-align: left">{{$data->due}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="4" style="text-align: left">Total</td>
            <td style="text-align: left">{{$total_quantity}}</td>
            <td style="text-align: left">{{$supplier->purchase->sum('main_quantity') * 2.2046}}</td>
            <td style="text-align: left">{{$total_actual_price}}</td>
            <td style="text-align: left">{{$supplier->purchase->sum('payment_amount')}}</td>
            <td style="text-align: left">{{$supplier->purchase->sum('due')}}</td>
        </tr>
@endpush
