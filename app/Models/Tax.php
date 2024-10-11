<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tax extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'rate',
        'created_by'
    ];
}
