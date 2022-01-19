<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



    public function role()
    {
        return $this->belongsTo(role::class);
    }

    public function submit_complain()
    {
        return $this->hasMany(complain::class, 'uid_in_charge');
    }

    public function bank_deposit()
    {
        return $this->hasMany(bank_deposit::class, 'submit_by');
    }

    public function created_subscriber()
    {
        return $this->belongsTo(subscriber::class, 'updated_by');
    }
}
