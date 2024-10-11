<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Holiday extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'date',
        'occasion',
        'created_by',
    ];
}
