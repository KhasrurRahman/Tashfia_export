@extends('layouts.backend.partial.app')
@section('title','Purchase')
@push('css')
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        input[type=number] {
            -moz-appearance: textfield;
        }

    </style>
    <link rel="stylesheet" href="{{ asset('backend/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/dist/css/select2.min.css') }}">
@endpush
@section('main_menu','HOME')
@section('active_menu','Purchase')
@section('link',route('admin.adminDashboard'))
@section('content')

    <div class="card">
        <div class="card-header">
            @include('layouts.backend.purchase.purchase_search')
        </div>
        <div class="card-body">
            <div style="overflow: hidden">
                <h3 class="card-title float-left">Total: <span class="badge badge-secondary" id="total_data"></span></h3>
            </div>
            <table class="table table-bordered yajra-datatable">
                <thead>
                <tr>
                    <th>Sel</th>
                    <th>Product</th>
                    <th>Supplier</th>
                    <th>Quantity(Kg)</th>
                    <th>Available Quantity(Kg)</th>
                    <th>Unit Price/Kg</th>
                    <th>Actual Purchase Price(Tk)</th>
                    <th>Total Paid</th>
                    <th>Due</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                <tr class="bg-success text-white">
                    <th style="text-align:right">Total:</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>


    <div class="modal fade" id="sales_due_payment" tabindex="-1" role="dialog" aria-labelledby="sales_due_paymentTitle"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="sales_due_paymentTitle">Pay Due Bill</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="" method="post" id="pay_bill_form">
                        @csrf
                        <input type="hidden" id="pay_bill_sales_id" name="sale_id">

                        @include('layouts.backend.purchase.bank_card')

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Make Payment</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    @include('layouts.backend.purchase.purchase_add_model')
    @include('layouts.backend.product.view_model')
    @include('layouts.backend.supplier.supplier_details_model')
    @include('layouts.backend.sales_department.invoice_payment_history_model')
@endsection
@push('js')
    <script src="{{ asset('backend/plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('backend/js/sweetalart.js') }}"></script>
    <script src="https://cdn.datatables.net/plug-ins/1.10.22/api/sum().js"></script>
    @include('layouts.backend.purchase.purchase_js')

@endpush
