<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class supplierModel extends Model
{
    protected $table = 'suppliers';
    protected $fillable = [
        'name',
        'phone',
        'address',
        'email',
        'balance',
        'company_name',
        'created_by',
    ];
}
