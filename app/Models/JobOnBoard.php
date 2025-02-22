<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobOnBoard extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'application',
        'joining_date',
        'status',
        'convert_to_employee',
        'created_by',
    ];

    public function applications()
    {
        return $this->hasOne('App\Models\JobApplication', 'id', 'application');
    }

    public static $status = [
        '' => 'Select Status',
        'pending' => 'Pending',
        'cancel' => 'Cancel',
        'confirm' => 'Confirm',
    ];
    public static $job_type = [
        '' => 'Select Job Type',
        'full time' => 'Full Time',
        'part time' => 'Part Time',

    ];
    public static $salary_duration = [
        '' => 'Select Salary Duration',
        'monthly' => 'Monthly',
        'weekly' => 'Weekly',

    ];
}
