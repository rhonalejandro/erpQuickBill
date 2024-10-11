<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomFieldValue extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'record_id',
        'field_id',
        'value',
    ];
}
