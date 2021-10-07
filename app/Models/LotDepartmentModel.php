<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LotDepartmentModel extends Model
{
    protected $table = 'lot_department';

    protected $fillable = ["sales_rate", "product_id", "per_unit_price", "quantity", "balance", "created_by"];

    public function product()
    {
        return $this->belongsTo(ModelProduct::class, 'product_id');
    }
}
