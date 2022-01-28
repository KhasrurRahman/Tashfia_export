<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CompanyModel extends Model
{
    protected $table = 'company_info';
    protected $fillable = [
        'company_name',
        'company_address',
        'company_contact_no',
        'country',
        'category',
    ];
}
