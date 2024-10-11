<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'title',
        'start_date',
        'end_date',
        'branch_id',
        'department_id',
        'description',
        'created_by',
    ];
}
