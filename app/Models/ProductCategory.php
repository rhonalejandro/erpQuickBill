<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'created_by',
        'description',
    ];


    protected $hidden = [];
}
