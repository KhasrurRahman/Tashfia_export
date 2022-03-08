<?php

namespace App;

use App\Models\ExpensesCategoryModel;
use Illuminate\Database\Eloquent\Model;

class AssetModel extends Model
{
    protected $table = 'asset';
    protected $fillable = ["category_id","name","balance","Amount","created_by","remarks"];

    public function category()
    {
        return $this->belongsTo(ExpensesCategoryModel::class, 'category_id');
    }
}
