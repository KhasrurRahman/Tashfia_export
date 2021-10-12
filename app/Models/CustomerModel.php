<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerModel extends Model
{
    protected $table = 'customers';
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
