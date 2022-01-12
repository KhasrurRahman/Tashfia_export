<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <title>Sales Invoice</title>

    <style>
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
            width: 100%;
            line-height: inherit;
            text-align: left;
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

    </style>
</head>

<body>
<div class="invoice-box">
    <table cellpadding="0" cellspacing="0">
        <tr class="top">
            <td colspan="3">
                <table style="border-bottom:2px solid #CAB0B9">
                    <tr>
                        <td style="font-size: 12px;font-weight: bold">
                            <span class="alignleft">Main Shop Phone:</span> <span
                                    class="alignright">+8801810077440</span><br/>
                            <span class="alignleft">Office Phone:</span> <span
                                    class="alignright">+8801810077441</span><br/>
                            <span class="alignright">+8801310088007</span><br/>
                            <span class="alignleft">Main Shop TNT:</span> <span
                                    class="alignright">+88-02-7643899</span><br/>
                            <span class="alignleft">Store TNT:</span> <span
                                    class="alignright">+88-02-47651260</span><br/>
                            <span class="alignleft">Office Mail:</span> <span
                                    class="alignright">tashfiaexportoffice@gmail.com</span>
                        </td>

                        <td style="vertical-align: bottom;text-align: center">
                            <img src="{{ asset('backend/img/tas_logo.png') }}"
                                 style="width: 100%; max-width: 300px"/>
                            <hr>
                            <p>Website : www.tashfiaexport.com</p>
                        </td>

                        <td style="font-size: 12px;font-weight: bold">
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
                <table>
                    <tr>
                        <td width="40%">
                            <p class="alignleft">Bill Number: <span>{{ $sales->sales_code }}</span></p>
                        </td>

                        <td>
                            <h4 style="text-align: center">BILL</h4>
                        </td>

                        <td>
                            <p class="alignright">Date:
                                <span>{{ date('d-M-y', strtotime($sales->created_at)) }}</span></p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr class="information">
            <td>
                <table style="margin-left: 10%">
                    <tr>
                        <td style="font-size: 12px;font-weight: bold;width: 30%;padding-right: 135px">
                            <span class="alignleft">Name:</span> <span
                                    class="alignright">{{ $sales->customer->name }}</span><br/>
                            <span class="alignleft">Address:</span> <span
                                    class="alignright">{{ $sales->customer->permanent_address }}</span><br/>
                            {{-- <span class="alignright">Gulshan Market,Nayamati,</span><br/> --}}
                            {{-- <span class="alignright">Narayanganj-1400,Bangladesh</span><br/> --}}
                            <span class="alignleft">Phone:</span> <span
                                    class="alignright">{{ $sales->customer->personal_phone }}</span><br/>
                        </td>

                        <td style="font-size: 12px;font-weight: bold;width: 30%;padding-left: 135px">
                                <span class="alignleft">Compnay name:
                                    {{ $sales->customer->company_name }}</span><br/>
                        </td>
                        <td style="font-size: 12px;font-weight: bold;width: 30%;">
                                <span class="alignleft" style="color: red">previous Total Due:
                                    {{ $sales->customer->sales_history->where('due', '>', 0)->sum('due') }} Tk</span><br/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <table
                    style="height: 574px; width: 90%; margin-left: auto; margin-right: auto;text-align: center;border-collapse: collapse"
                    class="invoice_table">
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
                            <p>{{ $data->total_price }}</p>
                        @endforeach
                    </td>
                </tr>
                <tr style="height: 6px;">
                    <td style="width: 175px; height: 6px;" colspan="3">
                        <p><b>Total: {{ $sales->total_price }}</b> (Due: {{ $sales->due }}) Tk</p>
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

        <br>
        <br>
        <br>
        <br>

    </table>
</div>
</body>
<script>
    window.addEventListener('load', function () {
        window.print()
    })

</script>
</html>
