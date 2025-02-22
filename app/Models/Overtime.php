<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Overtime extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'employee_id',
        'title',
        'number_of_days',
        'hours',
        'rate',
        'created_by',
    ];

    public function employee()
    {
        return $this->hasOne('App\Models\Employee', 'id', 'employee_id');
    }
}
