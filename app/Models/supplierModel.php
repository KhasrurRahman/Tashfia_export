<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class supplierModel extends Model
{
    protected $table = 'suppliers';
    protected $fillable = [
        'name',
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
}
