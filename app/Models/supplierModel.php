<?php

namespace App\Models;

use App\CompanyModel;
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
}
