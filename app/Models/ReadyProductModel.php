<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReadyProductModel extends Model
{
    protected $table = 'ready_product_details';
    protected $fillable = [
        'product_id',
        'ingredient_id',
        'quantity',
    ];
    
    public function ingredient()
    {
        return $this->belongsTo(IngredientModel::class, 'ingredient_id');
    }
    
    public function product_id()
    {
        return $this->belongsTo(ModelProduct::class, 'product_id');
    }
}
