<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class purchaseModel extends Model
{
    protected $table = 'purchase';
    protected $fillable = [
        'product_id',
        'supplier_id',
        'created_by',
        'quantity',
        'status',
        'unit_price',
        'total_purchas_price',
    ];
    
    public function product()
    {
        return $this->belongsTo(ModelProduct::class, 'product_id');
    }
    
    public function supplier()
    {
        return $this->belongsTo(supplierModel::class, 'supplier_id');
    }
}
