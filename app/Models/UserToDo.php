<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserToDo extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'title',
        'is_complete',
        'user_id',
    ];
}
