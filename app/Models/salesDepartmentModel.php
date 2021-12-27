<?php

namespace App\Models;

use App\SalesDetailsModel;
use App\SalesExecutiveModel;
use Illuminate\Database\Eloquent\Model;

class salesDepartmentModel extends Model
{
    protected $table = 'sales';

    protected $fillable = ["customer_id","stock_id","sales_executive_id", "unit_price", "quantity_of_sell","order_no","created_by","created_by"];
    
    
    public function stock()
    {
        return $this->belongsTo(lotDepartmentModel::class,'stock_id');
    }
    
    public function customer()
    {
        return $this->belongsTo(CustomerModel::class,'customer_id');
    }
    
    public function sales_details()
    {
        return $this->hasMany(SalesDetailsModel::class,'sales_id');
    }
    
    public function sales_payments()
    {
        return $this->hasMany(SalesPaymentModel::class,'sales_id');
    }
    
    public function sales_executive()
    {
        return $this->belongsTo(SalesExecutiveModel::class,'sales_executive_id');
    }
}
