@extends('layouts.backend.partial.app')
@section('title','Add product')
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
@section('active_menu','Add product')
@section('link',route('admin.adminDashboard'))
@section('content')
    <form class="forms-sample" method="post" action="{{route('admin.product/store')}}">
        @csrf
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="">Product Type</label>
                    <select class="form-control select2" name="product_category_id" onchange="ingredient_show(this)">
                        @foreach($category as $data)
                            <option value="{{$data->id}}">{{$data->name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>


            <div class="col-md-12" id="ingredient_section" style="display: none">
                <div class="card">
                    <div class="card-header"><h3>Add Ingredient</h3></div>
                    <div class="card-body">
                        <div class="row" x-data="handler()">
                            <div class="col">
                                <table class="table table-bordered align-items-center table-sm">
                                    <thead class="thead-light">
                                    <tr>
                                        <th>#</th>
                                        <th>Select Ingredient</th>
                                        <th>Quantity</th>
                                        <th>Remove</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <template x-for="(field, index) in fields" :key="index">
                                        <tr>
                                            <td x-text="index + 1"></td>
                                            <td>
                                                <div class="form-group">
                                                    <select class="form-control select2" name="ingredient_id[]">
                                                        <option disabled selected>Please select</option>
                                                        @foreach($ingredient as $data)
                                                            <option value="{{$data->id}}">{{$data->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </td>
                                            <td><input x-model="field.txt2" type="text" name="quantity[]" class="form-control"></td>
                                            <td>
                                                <button type="button" class="btn btn-danger btn-small" @click="removeField(index)">&times;</button>
                                            </td>
                                        </tr>
                                    </template>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="4" class="text-right">
                                            <button type="button" class="btn btn-info" @click="addNewField()">+ Add Row</button>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Create Product</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Product name</label>
                            <input type="text" class="form-control" name="chalan_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Fabric Type</label>
                            <input type="text" class="form-control" name="fabric_type">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputUsername1">Bill/chalan No</label>
                            <input type="text" class="form-control" name="chalan_no_2">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Party Name </label>
                            <input type="text" class="form-control" name="party_name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Color Name</label>
                            <input type="text" class="form-control" name="color_name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Open / Tube</label>
                            <input type="text" class="form-control" name="open_tube">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputUsername1">S/L NO</label>
                            <input type="text" class="form-control" name="sl_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Greige/G.G.S.M</label>
                            <input type="text" class="form-control" name="ggsm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Yarn Count</label>
                            <input type="text" class="form-control" name="yarn_count">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Yarn Lot No</label>
                            <input type="text" class="form-control" name="yarn_lot_no">
                        </div>

                        <button type="submit" class="btn btn-block btn-primary mr-2">Save</button>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Create Product</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Fabric Receive Date</label>
                            <input type="date" class="form-control" name="fb_rv_date">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Batch Process Date </label>
                            <input type="date" class="form-control" name="batch_process_date">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Lot number</label>
                            <input type="text" class="form-control" name="lot_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Batch number</label>
                            <input type="text" class="form-control" name="batch_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Order number</label>
                            <input type="text" class="form-control" name="order_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Style number</label>
                            <input type="text" class="form-control" name="style_no">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Finish GSM</label>
                            <input type="text" class="form-control" name="finish_gsm">
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


        function ingredient_show(select) {
            if (select.value == 2) {
                document.getElementById('ingredient_section').style.display = "block";
            } else {
                document.getElementById('ingredient_section').style.display = "none";
            }
        }

    </script>
@endpush

