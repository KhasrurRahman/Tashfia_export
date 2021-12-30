<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ExpensesModel extends Model
{
    protected $table = 'expenses';

    protected $fillable = ["expenses_category_id","name","balance","Amount","created_by","remarks"];

    public function expenses_category()
    {
        return $this->belongsTo(ExpensesCategoryModel::class, 'expenses_category_id');
    }
}
