@extends('layouts.backend.pdf.invoice_app')
@section('title','Deposit Expense Invoice')
@push('invoice_body')
    <h3 style="text-align: center">@yield('title','') | Tashfia Export</h3>

    <div style="display: table-row">
        <div style="float:left;width:49%;border-right: 7px solid;display: table-cell">
            <table class="invoice_table">
                <tr>
                    <th>পার্টি নাম</th>
                    <th>বিল নং</th>
                    <th>ব্যাংক</th>
                    <th>জমা</th>
                </tr>
                @foreach($sales_payments as $data)
                    <tr>
                        <td>{{$data->customer->name}}</td>
                        <td>{{$data->reference_sale->sales_code}}</td>
                        <td>{{$data->payment_mode}}</td>
                        <td>{{$data->amount}}</td>
                    </tr>
                @endforeach
                <tr>
                    <td>{{$initial_balance->sum('opening_balance')}}(Opening Balance)</td>
                </tr>
            </table>
        </div>
        <div style="float:right;width:49%;display: table-cell">
            <table class="invoice_table" style="margin-left: 0px">
                <tr>
                    <th>পার্টি নাম</th>
                    <th style="width: 60px;">বিল নং</th>
                    <th>ব্যাংক</th>
                    <th>খরচ</th>
                </tr>
                @foreach($purchase_history as $data)
                    <tr>
                        <td>{{$data->supplier->name}}(Purchase)</td>
                        <td>{{$data->id}}</td>
                        <td>{{$data->payment_mode}}</td>
                        <td>{{$data->actual_purchas_price}}</td>
                    </tr>
                @endforeach
                @foreach($expense_history as $data)
                    <tr>
                        <td>{{$data->name}}({{$data->expenses_category?$data->expenses_category->name:''}})(expense)</td>
                        <td></td>
                        <td></td>
                        <td>{{$data->Amount}}</td>
                    </tr>
                @endforeach
                @foreach($work_order as $data)
                    <tr>
                        <td>{{$data->product->chalan_no}}(work_order)</td>
                        <td></td>
                        <td></td>
                        <td>{{$data->total_amount}}</td>
                    </tr>
                @endforeach
            </table>
        </div>
        <div style="width: 100%">
            <table class="invoice_table" style="margin-left: 0px">
                <tr>
                    <th style="width: 35%">Total:</th>
                    <th style="width: 15%;">{{$sales_payments->sum('amount')}} TK</th>
                    <th style="width: 35%">Total:</th>
                    <th style="width: 15%;">{{$purchase_history->sum('actual_purchas_price') + $expense_history->sum('Amount')}} TK</th>
                </tr>
                <tr>
                    <th colspan="4" style="text-align: right;background: #f90102;color: white">Balance: {{($initial_balance->sum('opening_balance')+$sales_payments->sum
                    ('amount')) - ($purchase_history->sum('actual_purchas_price') + $expense_history->sum('Amount')+$work_order->sum('total_amount'))}}TK</th>
                </tr>
            </table>
        </div>
    </div>
@endpush
