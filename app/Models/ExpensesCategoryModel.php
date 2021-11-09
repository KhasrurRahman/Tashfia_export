<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ExpensesCategoryModel extends Model
{
    protected $table = 'expenses_category';

    protected $fillable = ["name","created_by"];
}
