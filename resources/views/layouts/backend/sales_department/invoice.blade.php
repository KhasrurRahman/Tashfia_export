<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <title>Sales Invoice</title>

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Neonderthaw&display=swap');
        .invoice-box {
            max-width: 1000px;
            margin: auto;
            padding: 10px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #000000;
        }

        .invoice-box table {
            width: 95%;
            line-height: inherit;
            text-align: left;
            margin-left:2.5%
        }

        .invoice-box table td {
            padding: 0px;
            vertical-align: top;
        }

        .invoice-box table tr td:nth-child(2) {
            text-align: right;
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
            border-bottom:1px solid black;
        }



    </style>
</head>

<body style="font-family:fantasy">
<div class="invoice-box">
    <table cellpadding="0" cellspacing="0">
        <tr class="top">
            <td colspan="3">
                <table style="border-bottom:2px solid #CAB0B9;margin-top:20px;line-height:17px">
                    <tr>
                        <td style="font-size: 11px;">
                            <span class="alignleft">Main Shop Phone:</span> <span
                                    class="alignright">+8801810077441</span><br/>
                            <span class="alignleft">Office Phone:</span> <span
                                    class="alignright">+8801810077440</span><br/>
                            <span class="alignright">+8801810088007</span><br/>
                            <span class="alignleft">Main Shop TNT:</span> <span
                                    class="alignright">+88-02-7643899</span><br/>
                            <span class="alignleft">Store TNT:</span> <span
                                    class="alignright">+88-02-47651260</span><br/>
                            <span class="alignleft">Office Mail:</span> <span
                                    class="alignright" style="font-size:8px">tashfiaexportoffice@gmail.com</span>
                        </td>

                        <td style="vertical-align: bottom;text-align: center">
                            <img src="{{ asset('backend/img/invoice_logo.png') }}"
                                 style="width: 100%; max-width: 260px;padding-left:15px;padding-right:15px;margin-bottom:30px"/>
                            {{-- <hr>
                            <p>Website : www.tashfiaexport.com</p> --}}
                        </td>

                        <td style="font-size: 11px;">
                            <span class="alignleft">MD:</span> <span
                                    class="alignright">+8801848080971</span><br/>
                            <span class="alignright">+8801711853521</span><br/>
                            <span class="alignleft">MD Mail:</span> <span
                                    class="alignright">tashliaexport@gmail.com</span><br/>
                            <span class="alignleft">Address:</span> <span class="alignright">52/2 B.B
                                    Road,Shop No # Gho 8,</span><br/>
                            <span class="alignright">Gulshan Market,Nayamati,</span><br/>
                            <span class="alignright">Narayanganj-1400,Bangladesh</span><br/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr class="information">
            <td colspan="3">
                <table style="line-height:1px">
                    <tr>
                        <td width="40%">
                            <p class="alignleft" style="font-weight:bold;font-size:13px">Bill Number: <span>{{ $sales->sales_code }}</span></p>
                        </td>

                        <td>
                            <h4 style="text-align: center;font-weight:bold;font-size:13px">Bill</h4>
                        </td>

                        <td>
                            <p class="alignright" style="font-weight:bold;font-size:13px">Date:
                                <span style="border: 1px solid;padding:3">{{ date('d-m-Y', strtotime($sales->created_at)) }}</span></p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr class="information">
            <td>
                <table style="margin-left: 5%">
                    <tr>
                        <td style="font-size: 12px;font-weight: bold;">
                            <span class="alignleft" style="width: 80px">Name: </span> <input style="width: 83%;height:20px;margin:1px" value="{{ $sales->customer->company->company_name }}" ><br/>
                            <span class="alignleft" style="width: 80px">Address:</span> <input style="width: 83%;height:20px;margin:1px" value="{{ $sales->customer->permanent_address }}"
                            ><br/>
                            <span class="alignleft" style="width: 80px">Buyer Name:</span> <input style="width: 83%;height:20px;margin:1px" value="{{ $sales->customer->name }}"><br/>
                            <span class="alignleft" style="width: 80px">Phone:</span> <input style="width: 83%;height:20px;margin:1px" value="{{ $sales->customer->personal_phone }}"><br/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <table style="height: 574px; width: 90%; margin-left: auto; margin-right: auto;text-align: center;border-collapse: collapse" class="invoice_table">
                <tbody>
                <tr style="height: 7px;">
                    <td style="width: 286px; height: 7px;">
                        <p>Description</p>
                    </td>
                    <td style="width: 76.0156px; height: 7px;text-align: center">
                        <p>ROLL</p>
                    </td>
                    <td style="width: 75.9844px; height: 7px;">
                        <p>KG</p>
                    </td>
                    <td style="width: 75.9844px; height: 7px;">
                        <p>Pound</p>
                    </td>
                    <td style="width: 76px; height: 7px;">
                        <p>Rate</p>
                    </td>
                    <td style="width: 99px; height: 7px;">
                        <p>Amount</p>
                    </td>
                </tr>
                <tr style="height: 399.578px;">
                    <td style="width: 286px; height: 405.578px;" rowspan="2">
                        @foreach ($sales->sales_details as $key => $data)
                            <p>{{ $key + 1 }} . {{ $data->stock->purchase->product->chalan_no }}</p>
                        @endforeach
                    </td>
                    <td style="width: 76.0156px; height: 405.578px;text-align: center" rowspan="2">
                        @foreach ($sales->sales_details as $key => $data)
                            <p>{{ $data->role }}</p>
                        @endforeach
                    </td>
                    <td style="width: 75.9844px; height: 405.578px;" rowspan="2">
                        @foreach ($sales->sales_details as $key => $data)
                            <p>{{ $data->quantity }}</p>
                        @endforeach
                    </td>
                    <td style="width: 75.9844px; height: 405.578px;" rowspan="2">
                        @foreach ($sales->sales_details as $key => $data)
                            <p>{{ $data->quantity * 2.2046}}</p>
                        @endforeach
                    </td>
                    <td style="width: 76px; height: 399.578px;">
                        @foreach ($sales->sales_details as $key => $data)
                            <p>{{ $data->unit_price }}</p>
                        @endforeach
                    </td>
                    <td style="width: 99px; height: 399.578px;">
                        @foreach ($sales->sales_details as $key => $data)
                            <p>{{ $data->total_price }}/-</p>
                        @endforeach
                    </td>
                </tr>
                <tr style="height: 6px;">
                    <td style="width: 175px; height: 6px;line-height: 10px;background:#dfd7d7" colspan="2">
                        <p><b>Total: {{ $sales->total_price }}</b>Tk</p>
                        <p><b>Payment: {{ $sales->payment_amount }}</b>Tk</p>
                        <p><b>Due: {{ $sales->due }}</b>Tk</p>
                    </td>
                </tr>
                <tr style="height: 6px;">
                    <td style="width: 175px; height: 6px;line-height: 5px" colspan="6">
                        <p style="font-weight: bold;color: red">Previous Due: {{ ($sales->customer->sales_history->where('due', '>', 0)->sum('due')) - $sales->due }} Tk</p>
                        <p style="font-weight: bold;color: red">Total Due: {{ $sales->customer->sales_history->where('due', '>', 0)->sum('due') }} Tk</p>
                    </td>
                </tr>
                </tbody>
            </table>
        </tr>

        <tr class="information">
            <td colspan="4">
                <table style="text-align: center;margin-top: 20px">
                    <tr>
                        <td style="font-size: 12px;font-weight: bold;">
                            <span>Received By:</span><br/>
                        </td>

                        <td style="font-size: 12px;font-weight: bold;">
                            <span>In-Charge:</span><br/>
                        </td>

                        <td style="font-size: 12px;font-weight: bold;">
                            <span>GM:</span><br/>
                        </td>

                        <td style="font-size: 12px;font-weight: bold;">
                            <span>Authorized by:</span><br/>
                        </td>

                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</body>
{{--<script>--}}
{{--    window.addEventListener('load', function () {--}}
{{--        window.print()--}}
{{--    })--}}

{{--</script>--}}
</html>
