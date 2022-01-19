@extends('layouts.backend.partial.app')
@section('title','Purchase Order Report')
@push('css')
    <style>
        .alignMe {
            list-style: none;
            font-size: 16px;
            line-height: 2.5;
        }

        .alignMe b {
            display: inline-block;
            width: 40%;
            position: relative;
            padding-right: 5px; /* Ensures colon does not overlay the text */
        }

        .alignMe b::after {
            content: ":";
            position: absolute;
            right: 10px;
        }

        .border_vis {
            border: 1px solid;
        }

    </style>
@endpush
@section('main_menu','HOME')
@section('active_menu','Purchase Order Report')
@section('link','')
@section('content')

    <div class="container-fluid">


        <div class="row">
            <div class="col-md-4">
                <ul class="alignMe">
                    <li><b>Company Name</b> Dummy Company Name</li>
                    <li><b>Company Address</b> 792 Sporer Roads, Schultzborough, Berkshire, Illinois 34021</li>
                    <li><b>Purchase Order</b> DC000000</li>
                </ul>
            </div>

            <div class="col-md-4">
                <ul class="alignMe">
                    <li><b>PO No</b> DC000000</li>
                    <li><b>PO Date</b> 00/00/0000</li>
                    <li><b>PO Source</b> Local</li>
                    <li><b>Supplier Name</b> DummySupNm</li>
                    <li><b>Subject</b> Dummy Subject</li>
                </ul>
            </div>

            <div class="col-md-4">
                <ul class="alignMe">
                    <li><b>Trade Term</b> DC000000</li>
                    <li><b>Delivery Date</b> 00/00/0000</li>
                    <li><b>Ship Mode</b> Road</li>
                    <li><b>Shipment Port</b> Mongla</li>
                </ul>
            </div>
        </div>

        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table" border="1">
                    <thead>
                    <tr>
                        <th>Item Code</th>
                        <th>H.S. Code</th>
                        <th>Item Description</th>
                        <th>UOM</th>
                        <th>PO Quantity</th>
                        <th>Currency</th>
                        <th>Rate</th>
                        <th>VAT(%)</th>
                        <th>Grand Total</th>
                        <th>Remarks</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="table-active">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>

                    <tr class="table-white">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>


                    <tr class="table-active">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>

                    <tr class="table-white">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>

                    <tr class="table-active">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>

                    <tr class="table-white">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>


                    <tr class="table-active">
                        <td>DC000000</td>
                        <td>0000000</td>
                        <td>DumDesc</td>
                        <td>DumUnit</td>
                        <td>0000</td>
                        <td>USD</td>
                        <td>0000</td>
                        <td>00000</td>
                        <td>0000</td>
                        <td>DumRemarks</td>
                    </tr>
                    </tbody>

                    <tfoot>
                    <tr style="border: 0px solid white" class="table-white">
                        <th colspan="6" class="text-right">Grand Total</th>
                        <th class="border_vis">0000</th>
                        <th class="border_vis">0000</th>
                        <th class="border_vis">0000</th>
                        <th></th>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>


        <div class="part">

        </div>

        <div class="row">
            <div class="col-md-4">
                <ul class="alignMe">
                    <li><b>Prepared By</b> Dummy Person Name</li>
                </ul>
            </div>

            <div class="col-md-4">
                <ul class="alignMe">
                    <li><b>Approved By</b> Dummy Person Name</li>
                </ul>
            </div>

            <div class="col-md-4">
                <ul class="alignMe">
                    <li><b>Report Generated On</b> 00.00</li>
                </ul>
            </div>

        </div>


    </div>

@endsection
@push('js')
@endpush
