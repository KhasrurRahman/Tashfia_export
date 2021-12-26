<div class="modal hide fade" id="add_button" role="dialog" aria-labelledby="add_buttonLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg mt-0 mb-0" role="document">
        <div class="modal-content">
            <form action="" method="post" id="save_info">
                <div class="modal-header">
                    <h5 class="modal-title" id="add_buttonLabel">Create @yield('title')</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="product_id">Select Product</label>
                        <br>
                        <select class="form-control select2" name="product_id" id="product_id">
                            <option value="">Select</option>
                            @foreach($products as $data)
                                <option value="{{$data->id}}">{{$data->chalan_no}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_product_id" class="text-red error_field"></span>
                    </div>
                    
                        <table class="table table-dark table-bordered" style="display: none" id="product_details_show">
                            <thead>
                            <tr>
                                <th scope="col">Chalan No</th>
                                <th scope="col">Card no</th>
                                <th scope="col">S/L No</th>
                                <th scope="col">Party name</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td id="create_chalan_no"></td>
                                <td id="create_card_no"></td>
                                <td id="create_party_name"></td>
                                <td id="create_sl_no"></td>
                            </tr>

                            </tbody>
                        </table>
                    
                    <br>


                    <div class="form-group">
                        <label for="product_id">Select Supplier</label>
                        <br>
                        <select class="form-control select2" name="supplier_id" id="supplier_id">
                            <option value="">Select</option>
                            @foreach($supplier as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_supplier_id" class="text-red error_field"></span>
                    </div>
                    
                    <table class="table table-dark table-bordered" style="display: none" id="supplier_details_show">
                            <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Phone Number</th>
                                <th scope="col">Email</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td id="create_chalan_no"></td>
                                <td id="create_card_no"></td>
                                <td id="create_party_name"></td>
                                <td id="create_sl_no"></td>
                            </tr>

                            </tbody>
                        </table>

                    <br>

                    <div class="form-group">
                        <label for="Route_name">Quantity</label>
                        <input type="number" class="form-control" name="quantity" onkeyup="total_price()" id="quantity">
                        <span id="Error_status_quantity" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price</label>
                        <input type="number" class="form-control" name="unit_price" id="unit_price" onkeyup="total_price()">
                        <span id="Error_status_unit_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Total Purchase Price</label>
                        <input type="number" class="form-control " name="total_purchas_price" id="total_purchas_price" readonly>
                        <span id="Error_status_total_purchas_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Actual Purchase Price</label>
                        <input type="number" class="form-control " name="actual_purchas_price" id="actual_purchas_price">
                        <span id="Error_status_actual_purchas_price" class="text-red error_field"></span>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-secondary">save</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>
