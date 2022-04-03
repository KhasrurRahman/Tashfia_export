<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>@yield('title','') | Tashfia Export</title>

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

        /*.invoice_table td, th {*/
        /*    border: 1px solid #dddddd;*/
        /*    text-align: left;*/
        /*    padding: 8px;*/
        /*    text-align: center;*/
        /*}*/

        /*.invoice_table tr:nth-child(even) {*/
        /*    background-color: #dddddd;*/
        /*}*/

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
        .middle_align{
            text-align: center;
        }
    </style>
</head>

<body style="font-family:'Times New Roman'">
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

                        <td style="vertical-align: top;text-align: center;width: 40%">
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


    @stack('invoice_body')


</div>
</body>
</html>
