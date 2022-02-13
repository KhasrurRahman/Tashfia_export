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
                            <th scope="col">Name</th>
                            <th scope="col">Card no</th>
                            <th scope="col">Style No</th>
                            <th scope="col">Fabric Type</th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td id="details_chalan_no"></td>
                            <td id="details_card_no"></td>
                            <td id="details_style_no"></td>
                            <td id="details_fabric_type"></td>
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
                                <option value="{{$data->id}}">{{$data->name}} (Company: {{$data->company->company_name}})</option>
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
                        <label for="Route_name">Quantity(kg)</label>
                        <input type="number" step="any" class="form-control" name="quantity" onkeyup="total_price()" id="quantity">
                        <span id="Error_status_quantity" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Quantity(Pound)</label>
                        <input type="number" step="any" class="form-control" name="quantity_pound" onkeyup="total_price_pound()" id="quantity_pound">
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price(kg)</label>
                        <input type="number" step="any" class="form-control" name="unit_price" id="unit_price" onkeyup="unit_price_kg()">
                        <span id="Error_status_unit_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Unit Price(Pound)</label>
                        <input type="number" step="any" class="form-control" name="unit_price_pound" id="unit_price_pound"
                               onkeyup="pound_unit_price()">
                        <span id="Error_status_unit_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Total Purchase Price</label>
                        <input type="number" step="any" class="form-control " name="total_purchas_price" id="total_purchas_price" readonly>
                        <span id="Error_status_total_purchas_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Actual Purchase Price</label>
                        <input type="number" step="any" class="form-control " name="actual_purchas_price" id="actual_purchas_price">
                        <span id="Error_status_actual_purchas_price" class="text-red error_field"></span>
                    </div>

                    <div class="form-group">
                        <label for="Route_name">Payment Mode</label>
                        <select class="form-control select2" name="payment_mode" id="payment_mode">
                            <option selected disabled>Select Bank</option>
                            <option value="Agrani Bank Ltd.[Agrani Bank Ltd">Agrani Bank Ltd</option>
                            <option value="Bangladesh Development Bank Ltd">Bangladesh Development Bank Ltd</option>
                            <option value="Basic Bank Ltd">Basic Bank Ltd</option>
                            <option value="Janata Bank Ltd">Janata Bank Ltd</option>
                            <option value="Rupali Bank Ltd">Rupali Bank Ltd</option>
                            <option value="Sonali Bank Ltd">Sonali Bank Ltd</option>
                            <option value="AB Bank Ltd">AB Bank Ltd</option>
                            <option value="Bangladesh Commerce Bank Ltd">Bangladesh Commerce Bank Ltd</option>
                            <option value="Bank Asia Ltd">Bank Asia Ltd</option>
                            <option value="BRAC Bank Ltd">BRAC Bank Ltd</option>
                            <option value="City Bank Ltd">City Bank Ltd</option>
                            <option value="Dhaka Bank Ltd">Dhaka Bank Ltd</option>
                            <option value="Dutch-Bangla Bank Ltd">Dutch-Bangla Bank Ltd</option>
                            <option value="Eastern Bank Ltd">Eastern Bank Ltd</option>
                            <option value="Farmers Bank Ltd">Farmers Bank Ltd</option>
                            <option value="IFIC Bank Ltd">IFIC Bank Ltd</option>
                            <option value="Jamuna Bank Ltd">Jamuna Bank Ltd</option>
                            <option value="Meghna Bank Ltd">Meghna Bank Ltd</option>
                            <option value="Mercantile Bank Ltd">Mercantile Bank Ltd</option>
                            <option value="Midland Bank">Midland Bank</option>
                            <option value="Modhumoti Bank Ltd">Modhumoti Bank Ltd.</option>
                            <option value="Mutual Trust Bank Ltd">Mutual Trust Bank Ltd</option>
                            <option value="National Bank Ltd">National Bank Ltd</option>
                            <option value="National Credit & Commerce Bank Ltd"> National Credit & Commerce Bank Ltd</option>
                            <option value="NRB Bank Ltd">NRB Bank Ltd</option>
                            <option value="NRB Commercial Bank Ltd">NRB Commercial Bank Ltd</option>
                            <option value="One Bank Ltd">One Bank Ltd</option>
                            <option value="Premier Bank Ltd">Premier Bank Ltd</option>
                            <option value="Prime Bank Ltd.">Prime Bank Ltd.</option>
                            <option value="Pubali Bank Ltd"> Pubali Bank Ltd</option>
                            <option value="Shimanto Bank Ltd">Shimanto Bank Ltd</option>
                            <option value="South Bangla Agri. & Com. Bank Ltd. (SBAC)">South Bangla Agri. & Com. Bank Ltd. (SBAC)</option>
                            <option value="Southeast Bank Ltd.">Southeast Bank Ltd.</option>
                            <option value="Standard Bank Ltd.">Standard Bank Ltd.</option>
                            <option value="Trust Bank Ltd.">Trust Bank Ltd.</option>
                            <option value="United Commercial Bank Ltd.">United Commercial Bank Ltd.</option>
                            <option value="Uttara Bank Ltd.">Uttara Bank Ltd.</option>
                            <option value="Al-Arafah Islami Bank Ltd">Al-Arafah Islami Bank Ltd</option>
                            <option value="EXIM Bank Ltd">EXIM Bank Ltd</option>
                            <option value="First Security Islami Bank Ltd">First Security Islami Bank Ltd</option>
                            <option value="ICB Islamic Bank Ltd.">ICB Islamic Bank Ltd.</option>
                            <option value="Islami Bank Bangladesh Ltd.">Islami Bank Bangladesh Ltd.</option>
                            <option value="Islami Somaz Bank Ltd.">Islami Somaz Bank Ltd.</option>
                            <option value="Shahjalal Islami Bank Ltd.">Shahjalal Islami Bank Ltd.</option>
                            <option value="Social Islami Bank Ltd.">Social Islami Bank Ltd.</option>
                            <option value="Union Bank Ltd.">Union Bank Ltd.</option>
                            <option value="Foreign Commercial Banks">Foreign Commercial Banks</option>
                            <option value="Bank Al-Falah Ltd.">Bank Al-Falah Ltd.</option>
                            <option value="Citibank N.A">Citibank N.A</option>
                            <option value="Commercial Bank of Ceylon">Commercial Bank of Ceylon</option>
                            <option value="Habib Bank Ltd.">Habib Bank Ltd.</option>
                            <option value="HSBC">HSBC</option>
                            <option value="National Bank of Pakistan">National Bank of Pakistan</option>
                            <option value="Standard Chartered Bank">Standard Chartered Bank</option>
                            <option value="State Bank of India">State Bank of India</option>
                            <option value="Woori Bank">Woori Bank</option>
                            <option value="Agrani SME Financing Company Ltd.">Agrani SME Financing Company Ltd.</option>
                            <option value="Ansar VDP Unnyan Bank">Ansar VDP Unnyan Bank</option>
                            <option value="Bangladesh Development Bank Ltd">Bangladesh Development Bank Ltd</option>
                            <option value="Bangladesh Finance and Investment Company Ltd.">Bangladesh Finance and Investment Company Ltd.</option>
                            <option value="Bangladesh Industrial Finance Company Ltd.">Bangladesh Industrial Finance Company Ltd.</option>
                            <option value="Bangladesh Infrastructure Finance Fund Ltd.">Bangladesh Infrastructure Finance Fund Ltd.</option>
                            <option value="Bangladesh Krishi Bank">Bangladesh Krishi Bank</option>
                            <option value="Bangladesh Somobay Bank Ltd.">Bangladesh Somobay Bank Ltd.</option>
                            <option value="BASIC Bank Ltd.">BASIC Bank Ltd.</option>
                            <option value="Bay Leasing and Investment Ltd.">Bay Leasing and Investment Ltd.</option>
                            <option value="CAPM Venture Capital and Finance Ltd.">CAPM Venture Capital and Finance Ltd.</option>
                            <option value="Delta Brac Housing Finance Corporation Ltd.">Delta Brac Housing Finance Corporation Ltd.</option>
                            <option value="Dhaka Mercantile Co-operative Bank Ltd.(DMCBL)">Dhaka Mercantile Co-operative Bank Ltd.(DMCBL)</option>
                            <option value="Far-east Finance & Investment Ltd.">Far-east Finance & Investment Ltd.</option>
                            <option value="FAS Finance & Investment Ltd.">FAS Finance & Investment Ltd.</option>
                            <option value="First Finance Ltd.">First Finance Ltd.</option>
                            <option value="Grameen Bank">Grameen Bank</option>
                            <option value="GSP Finance Company (Bangladesh) Ltd.">GSP Finance Company (Bangladesh) Ltd.</option>
                            <option value="Hajj Finance Company Ltd.">Hajj Finance Company Ltd.</option>
                            <option value="IDLC Finance Ltd.">IDLC Finance Ltd.</option>
                            <option value="Industrial and Infrastructure Ltd (IIDFC)">Industrial and Infrastructure Ltd (IIDFC)</option>
                            <option value="Infrastructure Development Company Ltd.">Infrastructure Development Company Ltd.</option>
                            <option value="Int. Leasing and Financial Services Ltd.(ILFSL)">Int. Leasing and Financial Services Ltd.(ILFSL)</option>
                            <option value="Investment Corporation of Bangladesh">Investment Corporation of Bangladesh</option>
                            <option value="IPDC Finance Ltd.">IPDC Finance Ltd.</option>
                            <option value="Islamic Finance and Investment Ltd.">Islamic Finance and Investment Ltd.</option>
                            <option value="Karmasangsthan Bank">Karmasangsthan Bank</option>
                            <option value="LankaBangla Finance Ltd.">LankaBangla Finance Ltd.</option>
                            <option value="Meridian Finance and Investment Ltd.">Meridian Finance and Investment Ltd.</option>
                            <option value="MIDAS Financing Ltd.">MIDAS Financing Ltd.</option>
                            <option value="National Finance Ltd.">National Finance Ltd.</option>
                            <option value="National Housing Finance and Investments Ltd.">National Housing Finance and Investments Ltd.</option>
                            <option value="Non Bank Financial Institutions">Non Bank Financial Institutions</option>
                            <option value="People's Leasing and Financial Services Ltd.">People's Leasing and Financial Services Ltd.</option>
                            <option value="Phoenix Finance and Investments Ltd.">Phoenix Finance and Investments Ltd.</option>
                            <option value="Premier Leasing & Finance Ltd.">Premier Leasing & Finance Ltd.</option>
                            <option value="Prime Finance & Investment Ltd.">Prime Finance & Investment Ltd.</option>
                            <option value="Progoti Bank">Progoti Bank</option>
                            <option value="Rajshahi Krishi Unnayan Bank">Rajshahi Krishi Unnayan Bank</option>
                            <option value="Reliance Finance Ltd">Reliance Finance Ltd.</option>
                            <option value="Saudi-Bangladesh Industrial. (SABINCO)">Saudi-Bangladesh Industrial. (SABINCO)</option>
                            <option value="SEAF Bangladesh Venture Ltd.">SEAF Bangladesh Venture Ltd.</option>
                            <option value="The UAE-Bangladesh Investment Company Ltd.">The UAE-Bangladesh Investment Company Ltd.</option>
                            <option value="Union Capital Ltd.">Union Capital Ltd.</option>
                            <option value="United Finance Ltd.">United Finance Ltd.</option>
                            <option value="Uttara Finance and Investments Ltd.">Uttara Finance and Investments Ltd.</option>
                        </select>
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
