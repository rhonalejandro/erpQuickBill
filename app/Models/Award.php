<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Award extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'employee_id',
        'award_type',
        'date',
        'gift',
        'description',
        'created_by',
    ];

    public function awardType()
    {
        return $this->hasOne('App\Models\AwardType', 'id', 'award_type');
    }

    public function employee()
    {
        return $this->hasOne('App\Models\Employee', 'id', 'employee_id');
    }
}
