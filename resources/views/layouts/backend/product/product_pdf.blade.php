<style>
    #customers {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #customers tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #customers tr:hover {
        background-color: #ddd;
    }

    #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #4CAF50;
        color: white;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <div class="card" id="payment">
            <div class="card-body">
                <div class="tab-content">
                    <div class="active tab-pane">
                        <div class="card" id="printMe">
                            <div class="card-header">
                                <h3 class="card-title" style="text-align: center">Product Full Details</h3>
                            </div>
                            <div class="card-body">
                                <div class="box">
                                    <div class="box-body no-padding">
                                        <table class="table table-condensed" width="100%" id="customers">
                                            <tbody>
                                            <tr>
                                                <td>#.</td>
                                                <td>Batch Number :</td>
                                                <td><span class="badge bg-red">{{$product->chalan_no}}</span></td>

                                                <td>#.</td>
                                                <td>Lot Number :</td>
                                                <td><span class="badge bg-red">{{$product->lot_no}}</span></td>
                                            </tr>

                                            <tr>
                                                <td>#.</td>
                                                <td>Customer:</td>
                                                <td><span class="badge bg-red">{{$product->party_name}}</span></td>

                                                <td>#.</td>
                                                <td>Color:</td>
                                                <td><span class="badge bg-red">{{$product->color_name}}</span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>#.</td>
                                                <td>Gsm:</td>
                                                <td><span
                                                        class="badge bg-red">{{$product->ggsm}}</span>
                                                </td>

                                                <td>#.</td>
                                                <td>Card No :</td>
                                                <td><span class="badge bg-red">{{$product->card_no}}</span></td>
                                            </tr>

                                            <tr>
                                                <td>#.</td>
                                                <td>Y. Count:</td>
                                                <td><span
                                                        class="badge bg-red">{{$product->yarn_count}}</span>
                                                </td>

                                                <td>#.</td>
                                                <td>Y. Lot:</td>
                                                <td><span
                                                        class="badge bg-red">{{$product->yarn_lot_no}}</span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>#.</td>
                                                <td>s/L:</td>
                                                <td><span class="badge bg-red">{{$product->sl_no}}</span>
                                                </td>

                                                <td>#.</td>
                                                <td>Order No:</td>
                                                <td><span class="badge bg-red">{{$product->order_no}}</span></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <br>
                               <div style="text-align: center; margin-left: 30%">{!! DNS1D::getBarcodeHTML('4445645656', 'CODABAR') !!}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




