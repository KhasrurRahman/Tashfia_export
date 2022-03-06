<?php

namespace App;

use App\Models\ModelProduct;
use Illuminate\Database\Eloquent\Model;

class workworderModel extends Model
{
    protected $table = 'work_order';
    
    public function party()
    {
        return $this->belongsTo(workworderpartyModel::class,'party_id');
    }

    public function product()
    {
        return $this->belongsTo(ModelProduct::class,'product_id');
    }
}
