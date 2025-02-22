<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserContact extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'parent_id',
        'user_id',
        'role',
    ];
}
