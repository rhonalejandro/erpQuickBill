<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserEmailTemplate extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'template_id',
        'user_id',
        'is_active',
    ];
}
