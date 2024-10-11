<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'price',
        'description',
        'image',
        'type',
        'created_by',
    ];

    public $customField;
}
