<?php

namespace App;

use App\Models\salesDepartmentModel;
use Illuminate\Database\Eloquent\Model;

class SalesExecutiveModel extends Model
{
    public function sales()
    {
        return $this->hasMany(salesDepartmentModel::class, 'sales_executive_id');
    }
}
