@extends('layouts.backend.pdf.invoice_app')
@section('title','Customer sales history')
@push('invoice_body')
    <span style="line-height: 3px">
        <h3 style="text-align: center">Company Name:  {{$customer->company?$customer->company->company_name:$customer->company_name}} </h3>
        <h3 style="text-align: center">Customer Name:  {{$customer->name}} </h3>
        <h3 style="text-align: center">Customer ID:  {{$customer->id}} </h3>
        <h3 style="text-align: center">Customer Phone:  {{$customer->personal_phone}} </h3>
        </span>
    <table class="invoice_table">
        <tr>
            <th>SL.</th>
            <th>Date</th>
            <th>Sales Code</th>
            <th>Quantity(KG)</th>
            <th>Quantity(Pound)</th>
            <th>Total Amount (Tk)t</th>
            <th>Paid Amount (Tk)</th>
            <th>Due (Tk)</th>
        </tr>
        @foreach($customer->sales_history as $key=>$data)
            <tr>
                <td>{{$key+1}}</td>
                <td>{{date("d-M-y", strtotime($data->created_at))}}</td>
                <td style="text-align: left">{{$data->sales_code}}</td>
                <td style="text-align: left">{{$data->sales_details->sum('quantity')}}</td>
                <td style="text-align: left">{{$data->sales_details->sum('quantity') * 2.2046}}</td>
                <td style="text-align: left">{{$data->total_price}}</td>
                <td style="text-align: left">{{$data->payment_amount}}</td>
                <td style="text-align: left">{{$data->due}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="5">Total</td>
            {{--            <td style="text-align: left">{{$customer->sales_history->sales_details->sum('quantity')}}</td>--}}
            {{--            <td style="text-align: left">{{$customer->sales_history->sales_details->sum('quantity') * 2.2046}}</td>--}}
            <td style="text-align: left">{{$customer->sales_history->sum('total_price')}}</td>
            <td style="text-align: left">{{$customer->sales_history->sum('payment_amount')}}</td>
            <td style="text-align: left">{{$customer->sales_history->sum('due')}}</td>
        </tr>
@endpush
