<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventEmployee extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'event_id',
        'employee_id',
        'created_by',
    ];
}
