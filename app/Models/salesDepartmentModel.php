<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class salesDepartmentModel extends Model
{
    protected $table = 'sales_department';

    protected $fillable = ["date", "quantity", "roll", "lot", "buyer", "sell",];
}
