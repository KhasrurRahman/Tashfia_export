<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SalesPaymentModel extends Model
{
    protected $table = 'sales_payments';

    public function reference_sale()
    {
        return $this->belongsTo(salesDepartmentModel::class,'sales_id');
    }

    public function customer()
    {
        return $this->belongsTo(CustomerModel::class,'customer_id');
    }

}
