<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Warning extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'warning_to',
        'warning_by',
        'subject',
        'warning_date',
        'description',
        'created_by',
    ];


    public function employee()
    {
        return $this->hasOne('App\Models\Employee', 'id', 'employee_id')->first();
    }

    public function warningTo()
    {
        return $this->warning('warning_to');
    }
    public function warningBy()
    {
        return $this->warning('warning_by');
    }

    public function warning($relation)
    {
        return $this->hasOne('App\Models\Employee', 'id', $relation);
    }
}
