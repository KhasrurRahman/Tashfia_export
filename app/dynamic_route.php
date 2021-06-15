<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class dynamic_route extends Model
{
    public function role()
    {
    	return $this->belongsToMany(role::class, 'permission_roles','role_id');
    }
}
