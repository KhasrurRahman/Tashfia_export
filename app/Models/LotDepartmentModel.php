<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LotDepartmentModel extends Model
{
    protected $table = 'stock';

    protected $fillable = ["sales_rate", "purchase_id", "total_sales_price", "total_purchas_price", "created_by", "quantity", "main_quantity"];

    public function purchase()
    {
        return $this->belongsTo(purchaseModel::class, 'purchase_id');
    }
}
