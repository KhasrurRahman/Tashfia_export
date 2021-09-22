@extends('layouts.backend.partial.app')
@section('title','GNR Info List')
@push('css')
    <link rel="stylesheet" href="{{asset('assets/backend/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
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
@section('active_menu','GNR Info List')
@section('link','')
@section('content')

    <div class="container-fluid">

        <div class="col-md-12">

            <div class="row justify-content-end mr-0">

                <div class="form-group row">
                    <label for="exampleInputUsername2" class="col-md-2 col-form-label font-weight-bold">Search :</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="exampleInputUsername2" placeholder="GRN NO">
                    </div>

                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="exampleInputUsername2" placeholder="Text">
                    </div>
                </div>

            </div>


            <div class="table-responsive">
                <table class="table" border="1">
                    <thead>
                    <tr>
                        <th>Goods Receive Notes No</th>
                        <th>Purchase Order No</th>
                        <th>Supplier Name</th>
                        <th>Record Creator Name</th>
                        <th>Record Creation Date</th>
                        <th>Record Modifier Name</th>
                        <th>Modification Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-white">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>


                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-white">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-white">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>


                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-white">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-white">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>


                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>

                    <tr class="table-white">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>


                    <tr class="table-active">
                        <td>GRN000000</td>
                        <td>DC000000</td>
                        <td>DummySuNm</td>
                        <td>Dummy Creator</td>
                        <td>00/00/00</td>
                        <td>Dummy Modifier</td>
                        <td>00/00/00</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>


    </div>

@endsection
@push('js')
@endpush
