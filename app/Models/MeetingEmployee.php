<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MeetingEmployee extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'meeting_id',
        'employee_id',
        'created_by',
    ];
}
