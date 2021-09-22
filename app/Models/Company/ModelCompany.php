<?php

namespace App\Models\Company;

use Illuminate\Database\Eloquent\Model;

class ModelCompany extends Model
{
    protected $table = 'master_company';
    protected $fillable = [
        'company_name',
        'company_name_bn',
        'company_short_name',
        'company_short_name_bn',
        'comapny_reg_person_name',
        'company_reg_person_nid',
        'company_business_activity_code',
        'company_business_acitvity_code_bn',
        'company_phone_number',
        'company_email_address',
        'company_fax_number',
        'company_business_activity',
        'company_business_activity_bn',
        'company_bin_no',
        'company_bin_no_bn',
        'company_address',
        'company_adddress_bn',
        'company_area_code',
        'company_area_code_bn',
        'company_custom_office_area',
        'company_custom_office_area_bn',
    ];

    public $timestamps = false;
}
