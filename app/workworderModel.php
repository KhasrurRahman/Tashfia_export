<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class workworderModel extends Model
{
    protected $table = 'work_order';
    
    public function party()
    {
        return $this->belongsTo(workworderpartyModel::class,'party_id');
    }
}
