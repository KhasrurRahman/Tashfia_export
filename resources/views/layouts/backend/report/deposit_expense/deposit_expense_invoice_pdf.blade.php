<link rel="stylesheet" href="{{ asset('backend/css/all.css') }}">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Neonderthaw&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Playball&display=swap');


    .invoice-box {
        max-width: 1000px;
        margin: auto;
        padding: 10px;
        /*border: 1px solid #eee;*/
        /*box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);*/
        font-size: 16px;
        line-height: 24px;
        color: #000000;
    }

    .invoice-box table {
        width: 98%;
        line-height: inherit;
        text-align: left;
        margin-left: 1.5%
    }

    .invoice-box table td {
        padding: 0px;
        vertical-align: top;
    }

    .invoice-box table tr td:nth-child(2) {
        /*text-align: right;*/
    }

    .invoice-box table tr.top table td {
        padding-bottom: 0px;
    }

    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #000000;
    }

    .invoice-box table tr.information table td {
        /*padding-bottom: 40px;*/
    }

    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }

    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.item td {
        border-bottom: 1px solid #eee;
    }

    .invoice-box table tr.item.last td {
        border-bottom: none;
    }

    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }

    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }

        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }

    /** RTL **/
    .invoice-box.rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }

    .invoice-box.rtl table {
        text-align: right;
    }

    .invoice-box.rtl table tr td:nth-child(2) {
        text-align: left;
    }

    .alignleft {
        float: left;
    }

    .alignright {
        float: right;
    }

    .invoice_table td,
    th {
        border: 2px solid black;
    }

    .invoice_table tr {
        border-bottom: 1px solid black;
    }

    .dotted_line td p {
        border-bottom: 1px dotted #dddddd;
    }

    .description p {
        text-align: left;
        padding-left: 10px;
    }

    .invoice_table {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
        text-align: center;
    }

    .invoice_table td, .invoice_table th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .invoice_table tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .invoice_table tr:hover {
        background-color: #ddd;
    }

    .invoice_table th {
        padding-top: 5px;
        padding-bottom: 5px;
        text-align: center;
        background-color: #04AA6D;
        color: black;
        font-size: 13px;
    }

    .middle_align {
        text-align: center;
    }
</style>
<div class="invoice-box">
    <table cellpadding="0" cellspacing="0">
        <tr class="top">
            <td colspan="3">
                <table style="margin-top:20px;line-height:17px;font-size: 11px">
                    <tr>
                        <td style="width: 12%">
                            <span class="alignleft">Main Shop Phone:</span> <br/>
                            <span class="alignright"></span><br/>
                            <span class="alignleft">Office Phone:</span> <br/>
                            <span class="alignright"></span><br/>
                            <span class="alignleft">Main Shop TNT:</span> <br/>
                            <span class="alignleft">Store TNT:</span> <br/>
                            <span class="alignleft">Office Mail:</span>
                        </td>

                        <td style="width: 9%">
                            <span class="alignleft">+8801847092041</span><br/>
                            <span class="alignleft">+8801810077440</span><br/>
                            <span class="alignleft">+8801810077441</span><br/>
                            <span class="alignleft">+8801810088007</span><br/>
                            <span class="alignleft">+8802224433899</span><br/>
                            <span class="alignleft">+88-02-47651260</span><br/>
                            <span class="alignleft" style="font-size:10px;margin-left: -30px">tashfiaexportoffice@gmail.com</span>
                        </td>

                        <td style="vertical-align: top;text-align: center;width: 50%">
                            <img src="{{ asset('backend/img/invoice_logo.png') }}"
                                 style="width: 100%;"/>
                            {{-- <hr>
                            <p>Website : www.tashfiaexport.com</p> --}}
                        </td>

                        <td style="width: 6%">
                            <span class="alignleft">MD:</span> <br/>
                            <span class="alignleft"></span> <br/>
                            <span class="alignleft">MD Mail:</span> <br/>
                            <span class="alignleft">Address:</span> <br/>
                        </td>

                        <td style="font-size: 11px;width: 19%">
                            <span class="alignleft">+8801848080971</span><br/>
                            <span class="alignleft">+8801711853521</span><br/>
                            <span class="alignleft">tashfiaexport@gmail.com</span><br/>
                            <span class="alignleft">52/2 B.B Road,Shop No # Gho 8,</span><br/>
                            <span class="alignleft">Gulshan Market,Nayamati,</span><br/>
                            <span class="alignleft">Narayanganj-1400,Bangladesh</span><br/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <table style="margin: 0px;border-bottom:2px solid #CAB0B9;width: 100%"></table>
    </table>
</div>
<hr>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12">
            <h2 class="text-center">
                তারিখ : {{date('Y-m-d')}}
            </h2>
        </div>

        <div class="col-md-6" style="border-right: 1px solid">
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
                        <div class="alert bg-warning alert-dark text-white mb-0" role="alert">
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
                        <div class="alert bg-warning alert-dark text-white mb-0" role="alert">
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
                        <div class="alert bg-warning alert-dark text-white mb-0" role="alert">
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
                        <tr>
                            <th colspan="4">মোট জমা</th>
                            <th>{{$total_asset}}</th>
                        </tr>
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
                        <div class="alert bg-warning alert-dark text-white mb-0" role="alert">
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
                        <div class="alert bg-warning alert-dark text-white mb-0" role="alert">
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
                        <tr>
                            <th colspan="4">মোট খরচ</th>
                            <th>{{$total_expense}}</th>
                        </tr>
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
</div>


<script src="{{ asset('backend/js/all.js') }}"></script>
