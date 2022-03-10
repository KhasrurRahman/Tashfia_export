<?php

namespace App\Models;

use App\CompanyModel;
use App\PurchasePaymentModel;
use Illuminate\Database\Eloquent\Model;

class supplierModel extends Model
{
    protected $table = 'suppliers';
    protected $fillable = [
        'name',
        'company_id',
        'personal_phone',
        'optional_phone',
        'present_address',
        'permanent_address',
        'email',
        'balance',
        'company_name',
        'company_address',
        'company_contact_no',
        'reference',
        'nid',
        'photo',
        'nationality',
        'designation',
        'country',
        'created_by',
        'company_name',
    ];
    
    public function company()
    {
        return $this->belongsTo(CompanyModel::class,'company_id');
    }

    public function purchase()
    {
        return $this->hasMany(purchaseModel::class,'supplier_id');
    }
    public function product()
    {
        return $this->belongsTo(ModelProduct::class,'product_id');
    }

    public function previous_due_payment_history()
    {
        return $this->hasMany(PurchasePaymentModel::class,'supplier_id')->where('purchase_id',null)->orderBy('created_at','desc');
    }
}
