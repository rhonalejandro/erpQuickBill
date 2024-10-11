<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobCategory extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'title',
        'created_by',
    ];
}
