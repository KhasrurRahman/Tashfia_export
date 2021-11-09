<div class="modal fade" id="add_button" tabindex="-1" role="dialog" aria-labelledby="add_buttonLabel"
     aria-hidden="true">
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
                        <label for="product_id">Select stock Product</label>
                        <br>
                        <select class="form-control select2" name="stock_id" id="stock_id">
                            <option value="">Select</option>
                            @foreach($stock as $data)
                                <option value="{{$data->id}}">{{$data->purchase->product->chalan_no}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_stock_id" class="text-red error_field"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="product_id">Select Customer</label>
                        <br>
                        <select class="form-control select2" name="customer_id" id="customer_id">
                            <option value="">Select</option>
                            @foreach($customer as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                            @endforeach
                        </select>
                        <span id="Error_status_customer_id" class="text-red error_field"></span>
                    </div>


                    <div class="form-group">
                        <label for="Route_name">Quantity in stock</label>
                        <input type="text" class="form-control"  id="stock_quantity" readonly>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">stock sales rate</label>
                        <input type="text" class="form-control"  id="stock_sales_rate" readonly>
                    </div>
                    
                    <div class="form-group">
                        <label for="Route_name">Total sales rate in stock</label>
                        <input type="text" class="form-control"  id="stock_total_sales_rate" readonly>
                    </div>
                    
                    

                    <div class="form-group">
                        <label for="Route_name">Quantity of sale</label>
                        <input type="number" class="form-control" name="quantity_of_sell">
                        <span id="Error_quantity" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price</label>
                        <input type="number" class="form-control" name="unit_price">
                        <span id="Error_unit_price" class="text-red error_field"></span>
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
