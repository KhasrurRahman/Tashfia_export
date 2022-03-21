@extends('layouts.backend.partial.app')
@section('title','জমা এবং খরচ')
@push('css')
@endpush
@section('main_menu','HOME')
@section('active_menu','Deposits and expenses Report')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.report.deposit_expense.deposit_expense_search')
        </div>
    </div>

    <div class="row justify-content-center" id="GFG">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    <h5>জমা</h5>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <th>ক্যাশ ইজা :</th>
                            <td>{{$opening_balance->opening_balance}}/=</td>
                        </tr>
                        </tbody>
                    </table>

                    <table class="table table-bordered">
                        <thead>
                        <div class="alert bg-dark alert-dark text-white mb-0" role="alert">
                            ক্রয়
                        </div>
                        <tr>
                            <th>#</th>
                            <th>পার্টি নাম</th>
                            <th>বিল নং</th>
                            <th>চেক নং</th>
                            <th>মোট টাকা</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($sales as $key=>$data)
                            <tr>
                                <th>{{$key+1}}</th>
                                <td>{{$data->customer->name}}</td>
                                <td>{{$data->reference_sale ? $data->reference_sale->sales_code:'Previous Due Payment'}}</td>
                                <td>
                                    {{$data->payment_mode}} ({{$data->bank_name . $data->cheque_number . $data->bkash_number}})
                                </td>
                                <td>{{$data->amount}}/=</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                    <table class="table table-bordered">
                        <thead>
                        <div class="alert bg-dark alert-dark text-white mb-0" role="alert">
                            সকল জমা
                        </div>
                        <tr>
                            <th>#</th>
                            <th>পার্টি নাম</th>
                            <th>ক্যাটাগরি</th>
                            <th>মন্তব্য</th>
                            <th>মোট টাকা</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($asset as $key=>$data)
                            <tr>
                                <th>{{$key+1}}</th>
                                <td>{{$data->name}}</td>
                                <td>{{$data->category->name}}</td>
                                <td>
                                    {{$data->remarks}}
                                </td>
                                <td>{{$data->Amount}}/=</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                    <table class="table table-bordered">
                        <thead>
                        <div class="alert bg-dark alert-dark text-white mb-0" role="alert">
                            অগ্রিম জমা
                        </div>
                        <tr>
                            <th>#</th>
                            <th>পার্টি নাম</th>
                            <th>প্রোডাক্ট</th>
                            <th>মন্তব্য</th>
                            <th>মোট টাকা</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($advance_sell as $key=>$data)
                            <tr>
                                <th>{{$key+1}}</th>
                                <td>{{$data->party->name}}</td>
                                <td>{{$data->product->chalan_no}}</td>
                                <td>
                                    {{$data->project_desc}}
                                </td>
                                <td>{{$data->subtotal}}/=</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="card-footer">

                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="card justify-content-center">
                <div class="card-header text-center">
                    <h5>খরচ</h5>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                        <div class="alert bg-dark alert-dark text-white mb-0" role="alert">
                            বিক্রয়
                        </div>
                        <tr>
                            <th>#</th>
                            <th>পার্টি নাম</th>
                            <th>বিল নং</th>
                            <th>চেক নং</th>
                            <th>মোট টাকা</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($purchase as $key=>$data)
                            <tr>
                                <th>{{$key+1}}</th>
                                <td>{{$data->supplier->name}}</td>
                                <td>{{$data->reference_purchase?$data->reference_purchase->id:'Previous Due Payment'}}</td>
                                <td>
                                    {{$data->payment_mode}} ({{$data->bank_name . $data->cheque_number . $data->bkash_number}})
                                </td>
                                <td>{{$data->amount}}/=</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <table class="table table-bordered">
                        <thead>
                        <div class="alert bg-dark alert-dark text-white mb-0" role="alert">
                            সকল খরচ
                        </div>
                        <tr>
                            <th>#</th>
                            <th>পার্টি নাম</th>
                            <th>ক্যাটাগরি</th>
                            <th>মন্তব্য</th>
                            <th>মোট টাকা</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($expense as $key=>$data)
                            <tr>
                                <th>{{$key+1}}</th>
                                <td>{{$data->name}}</td>
                                <td>{{$data->expenses_category->name}}</td>
                                <td>
                                    {{$data->remarks}}
                                </td>
                                <td>{{$data->Amount}}/=</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="card-footer">

                </div>
            </div>
        </div>

        <div class="col-md-8 text-center">
            <div class="card">
                <div class="card-body">
                    <h5>মোট জমা: {{$total_asset}}/=</h5>
                    <h5>মোট খরচ: {{$total_expense}}/=</h5>
                    <hr>
                    <h3>ক্যাশ: {{$total_asset - $total_expense}}/=</h3>
                </div>
            </div>
        </div>
    </div>


    <input type="button" value="click" onclick="printDiv()">


@endsection
@push('js')

    <script>
        function printDiv() {
            var print_div = document.getElementById("GFG");
            var print_area = window.open();
            print_area.document.write(print_div.innerHTML);
            print_area.document.close();
            print_area.focus();
            print_area.print();
            print_area.close();
        }
    </script>
@endpush
