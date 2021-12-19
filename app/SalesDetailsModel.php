<?php

namespace App;

use App\Models\CustomerModel;
use App\Models\lotDepartmentModel;
use App\Models\salesDepartmentModel;
use Illuminate\Database\Eloquent\Model;

class SalesDetailsModel extends Model
{
    protected $table = 'sales_details';
    
    public function customer()
    {
        return $this->belongsTo(CustomerModel::class,'customer_id');
    }
    
    public function stock()
    {
        return $this->belongsTo(lotDepartmentModel::class,'stock_id');
    }
    
    public function sale()
    {
        return $this->belongsTo(salesDepartmentModel::class,'sales_id');
    }
}
