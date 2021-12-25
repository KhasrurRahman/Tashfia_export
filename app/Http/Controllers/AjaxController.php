<?php

namespace App\Http\Controllers;

use App\Models\CustomerModel;
use App\Models\supplierModel;


class AjaxController extends Controller
{
    public function company_supplier_search($id)
    {
        $buildings = supplierModel::where('company_id', $id)->get()->sortBy('building_name');
        echo "<option disabled selected>Please Select</option>\n";
        foreach ($buildings as $val) {echo "<option value=\"{$val->id }\">{$val->name}</option>\n";}
    }
    
    
    public function company_customer_search($id)
    {
        $buildings = CustomerModel::where('company_id', $id)->get()->sortBy('building_name');
        echo "<option disabled selected>Please Select</option>\n";
        foreach ($buildings as $val) {echo "<option value=\"{$val->id }\">{$val->name}</option>\n";}
    }

}
