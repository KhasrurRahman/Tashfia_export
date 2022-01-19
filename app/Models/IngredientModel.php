<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IngredientModel extends Model
{
    protected $table = 'product_ingredients';
    protected $fillable = [
        'name',
        'quantity',
        'status',
        'created_by',
        'company_name',
    ];
}
