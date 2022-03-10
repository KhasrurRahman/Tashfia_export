<?php

namespace App;

use App\Models\purchaseModel;
use App\Models\supplierModel;
use Illuminate\Database\Eloquent\Model;

class PurchasePaymentModel extends Model
{
    protected $table = 'purchase_payments';

    public function supplier()
    {
        return $this->belongsTo(supplierModel::class, 'supplier_id');
    }

    public function reference_purchase()
    {
        return $this->belongsTo(purchaseModel::class,'purchase_id');
    }
}
