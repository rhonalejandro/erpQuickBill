<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductServiceUnit extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'created_by',
    ];

    public function unit()
    {
        return $this->hasOne('App\Models\ProductService', 'unit_id', 'id');
    }
}
