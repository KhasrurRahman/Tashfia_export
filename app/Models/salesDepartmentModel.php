<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class salesDepartmentModel extends Model
{
    protected $table = 'sales_department';

    protected $fillable = ["quantity_of_sell","stock_id", "unit_price", "balance","order_no"];
    
    
    public function stock()
    {
        return $this->belongsTo(LotDepartmentModel::class,'stock_id');
    }
}
