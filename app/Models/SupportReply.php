<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SupportReply extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'support_id',
        'user',
        'description',
        'created_by',
        'is_read',
    ];

    public function users()
    {
        return $this->hasOne('App\Models\User', 'id', 'user');
    }
}
