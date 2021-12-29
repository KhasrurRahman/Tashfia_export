<style>
    .center {
  /*margin: auto;*/
  /*width: 50%;*/
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
                                        @for($i = 0; $i < 9; $i++)
                                            
                                        <div style="padding: 10px;width: 200px;text-align: center;float: left" class="center"><span>{{$product->chalan_no}}</span>
                                            {!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  
                                            <span>{{$product->card_no}}</span>  </div>
                                            
                                            <div style="padding: 10px;width: 200px;text-align: center;margin: auto" class="center"><span>{{$product->chalan_no}}</span>
                                            {!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  
                                            <span>{{$product->card_no}}</span>  </div>
                                            
                                            <div style="padding: 10px;width: 200px;text-align: center;float: right" class="center"><span>{{$product->chalan_no}}</span>
                                            {!! DNS1D::getBarcodeHTML($product->card_no, 'CODABAR') !!}  
                                            <span>{{$product->card_no}}</span>  </div>
                                        @endfor
                                        
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




