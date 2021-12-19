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
    .center {
  margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
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
                                <h3 class="card-title" style="text-align: center">Product Bar code</h3>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div style="padding: 10px;width: 500px;margin: 0 auto" class="center">{!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  <div>{{$product->card_no}}</div>  </div>
                                        <div style="padding: 10px;width: 500px;margin: 0 auto" class="center">{!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  <span>{{$product->card_no}}</span> </div>
                                        <div style="padding: 10px;width: 500px;margin: 0 auto" class="center">{!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  <span>{{$product->card_no}}</span> </div>
                                        <div style="padding: 10px;width: 500px;margin: 0 auto" class="center">{!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  <span>{{$product->card_no}}</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




