<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DucumentUpload extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'role',
        'document',
        'description',
        'created_by',
    ];
}
