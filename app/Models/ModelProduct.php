<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ModelProduct extends Model
{
    protected $table = 'products';

    protected $fillable = ["product_category_id","chalan_no","chalan_no_2", "party_name", "color_name", "open_tube", "sl_no", "ggsm", "yarn_count", "yarn_lot_no", "fb_rv_date", "batch_process_date", "lot_no", "batch_no", "order_no", "style_no", "finish_gsm", "fabric_type",'card_no'];

    public function category()
    {
        return $this->belongsTo(ProductCategoryModel::class, 'product_category_id');
    }
}
