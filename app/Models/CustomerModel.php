<?php

namespace App\Models;

use App\CompanyModel;
use App\SalesDetailsModel;
use Illuminate\Database\Eloquent\Model;

class CustomerModel extends Model
{
    protected $table = 'customers';
    protected $fillable = [
        'name',
        'company_id',
        'personal_phone',
        'optional_phone',
        'present_address',
        'permanent_address',
        'email',
        'balance',
        'reference',
        'nid',
        'photo',
        'nationality',
        'designation',
        'created_by',
        'company_name',
    ];
    
    
    public function company()
    {
        return $this->belongsTo(CompanyModel::class,'company_id');
    }
    
    public function sales_history()
    {
        return $this->hasMany(salesDepartmentModel::class,'customer_id')->orderBy('created_at','desc');
    }
    
    public function payment_history()
    {
        return $this->hasMany(SalesPaymentModel::class,'customer_id')->where('customer_id',null)->orderBy('created_at','desc');
    }
    
}
