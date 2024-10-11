<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tenant extends Model
{
    protected $connection = 'tenant';
    protected $table = 'users_tenant';

    protected $fillable = [
        'id_user',
        'database'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
}
