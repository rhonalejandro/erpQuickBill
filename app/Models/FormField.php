<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FormField extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'form_id',
        'name',
        'type',
        'created_by',
    ];
}
