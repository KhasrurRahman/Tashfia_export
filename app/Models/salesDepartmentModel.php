<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class salesDepartmentModel extends Model
{
    protected $table = 'sales';

    protected $fillable = ["customer_id","stock_id", "unit_price", "quantity_of_sell","order_no","created_by","created_by"];
    
    
    public function stock()
    {
        return $this->belongsTo(lotDepartmentModel::class,'stock_id');
    }
}
