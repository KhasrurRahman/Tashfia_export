<?php

namespace App\Models;

use App\PurchasePaymentModel;
use Illuminate\Database\Eloquent\Model;

class purchaseModel extends Model
{
    protected $table = 'purchase';
    protected $fillable = [
        'product_id',
        'supplier_id',
        'created_by',
        'main_quantity',
        'quantity',
        'status',
        'unit_price',
        'total_purchas_price',
        'actual_purchas_price',
        'actual_unit_price',
        'payment_mode',
        'payment_amount',
        'due',
    ];
    
    public function product()
    {
        return $this->belongsTo(ModelProduct::class, 'product_id');
    }
    
    public function supplier()
    {
        return $this->belongsTo(supplierModel::class, 'supplier_id');
    }

    public function stock()
    {
        return $this->hasMany(LotDepartmentModel::class, 'purchase_id');
    }
    public function purchase_paymets()
    {
        return $this->hasMany(PurchasePaymentModel::class, 'purchase_id');
    }
}
