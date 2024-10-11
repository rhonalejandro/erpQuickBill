<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FormResponse extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'form_id',
        'response',
    ];
}
