<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainingType extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'created_by',
    ];
}
