<div class="row justify-content-center" id="multiple_payment_model">
    <div class="col-md-8 p-3 m-2" style="background: #6b279b52;border-radius: 1%" id="payment_mode_section">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="product_id">Amount</label>
                    <div class="input-group">
                        <input type="number" class="form-control payment_amount" name="payment_amount" id="payment_amount" step="any" required >
                    </div>
                    <span id="error_sub_total" class="text-red error_field"></span>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label for="product_id">Payment Type</label>
                    <select class="form-control select2 payment_type" name="payment_type" id="payment_type" onchange="cheque_date_input(this)">
                        <option value="Cash">Cash</option>
                        <option value="Bank">Bank</option>
                        <option value="Card">Card</option>
                        <option value="Bkash">Bkash</option>
                        <option value="Cheque">Cheque</option>
                    </select>
                    <span id="error_subtotal" class="text-red error_field "></span>
                </div>
            </div>

            <div class="col-12" id="bank_section" style="display: none;border: 1px solid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="Route_name">Bank</label>
                            <select class="form-control select2 bank_name" name="bank_name" id="bank_name">
                                <option selected disabled>Select Bank</option>
                                <option value="Agrani Bank Ltd">Agrani Bank Ltd</option>
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
                </div>
            </div>

            <div class="col-12" id="check_section" style="display: none;border: 1px solid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="product_id">cheque Number</label>
                            <div class="input-group">
                                <input type="number" class="form-control cheque_number" name="cheque_number" id="cheque_number">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="product_id">Date</label>
                            <div class="input-group">
                                <input type="date" class="form-control cheque_date" name="cheque_date" id="cheque_date">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12" id="bkash_section" style="display: none;border: 1px solid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="product_id">Bkash Number</label>
                            <div class="input-group">
                                <input type="number" class="form-control bkash_number" name="bkash_number" id="bkash_number">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="product_id">Transaction number</label>
                            <div class="input-group">
                                <input type="text" class="form-control bkash_trns_id" name="bkash_trns_id" id="bkash_trns_id">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label for="product_id">Remarks</label>
                    <div class="input-group">
                        <textarea name="remarks" id="remarks" style="width:100%" class="remarks"></textarea>
                    </div>
                    <span id="error_remarks" class="text-red error_field"></span>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    function cheque_date_input(select) {
        if (select.value === 'Cheque') {
            $(select).closest('.row').find('#check_section').show(1000);
            $(select).closest('.row').find('#bkash_section').hide(1000);
            $(select).closest('.row').find('#bank_section').hide(1000);
        } else if (select.value === 'Bkash') {
            $(select).closest('.row').find('#bkash_section').show(1000);
            $(select).closest('.row').find('#check_section').hide(1000);
            $(select).closest('.row').find('#bank_section').hide(1000);
        } else if (select.value === 'Bank') {
            $(select).closest('.row').find('#bank_section').show(1000);
            $(select).closest('.row').find('#check_section').hide(1000);
            $(select).closest('.row').find('#bkash_section').hide(1000);
        } else {
            $(select).closest('.row').find('#check_section').hide(1000);
            $(select).closest('.row').find('#bkash_section').hide(1000);
            $(select).closest('.row').find('#bank_section').hide(1000);
        }
    }
</script>
