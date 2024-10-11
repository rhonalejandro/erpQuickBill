<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'is_required',
        'created_by',
    ];
}
