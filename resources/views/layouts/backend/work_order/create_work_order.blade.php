@extends('layouts.backend.partial.app')
@section('title','Create Work order')
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
    <style>
        html, body {
            padding-top: 20px;
        }

        [data-role="dynamic-fields"] > .form-inline + .form-inline {
            margin-top: 0.5em;
        }

        [data-role="dynamic-fields"] > .form-inline [data-role="add"] {
            display: none;
        }

        [data-role="dynamic-fields"] > .form-inline:last-child [data-role="add"] {
            display: inline-block;
        }

        [data-role="dynamic-fields"] > .form-inline:last-child [data-role="remove"] {
            display: none;
        }

    </style>
@endpush
@section('main_menu','Products')
@section('active_menu','Create Work order')
@section('link',route('admin.adminDashboard'))
@section('content')
    <form class="forms-sample" method="post" action="{{route('admin.workorder/store_workorder')}}">
        @csrf
        <div class="row">
            <div class="col-md-12" id="ingredient_section">
                <div class="card">
                    <div class="card-body"><h3>Select Product</h3></div>
                    <div class="form-group">
                        <select class="form-control select2" name="product_id">
                            <option disabled selected>Please select</option>
                            @foreach($product as $data)
                                <option value="{{$data->id}}">{{$data->chalan_no}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>


            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="exampleInputUsername1">Invoice Date</label>
                                <input type="date" class="form-control" name="invoice_date" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="exampleInputPassword1">Due date</label>
                                <input type="date" class="form-control" name="due_date" required>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Work order party</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <select class="form-control select2" name="party_id">
                                <option disabled selected>Please select Party</option>
                                @foreach($party as $data)
                                    <option value="{{$data->id}}">{{$data->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Project Description</label>
                            <textarea class="form-control" name="project_desc"></textarea>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary mr-2">Save</button>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Amount</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Subtotal</label>
                            <input type="number" class="form-control" name="subtotal" id="subtotal" min="0" onkeyup="total_price()" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tax</label>
                            <input type="number" class="form-control" name="tax" id="tax" min="0" onkeyup="total_price()" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Total Amount</label>
                            <input type="number" class="form-control" name="total_amount" id="total_amount" min="0" readonly required>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>


@endsection
@push('js')
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();
        });

        function handler() {
            return {
                fields: [],
                addNewField() {
                    this.fields.push({
                        txt1: '',
                        txt2: ''
                    });
                },
                removeField(index) {
                    this.fields.splice(index, 1);
                }
            }
        }

        function total_price() {
            $("#total_amount").val($("#tax").val() * $("#subtotal").val())
        }
    </script>
@endpush

