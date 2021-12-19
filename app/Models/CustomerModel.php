<?php

namespace App\Models;

use App\CompanyModel;
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
    
}
