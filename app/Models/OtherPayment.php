<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OtherPayment extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'employee_id',
        'title',
        'amount',
        'created_by',
    ];

    public function employee()
    {
        return $this->hasOne('App\Models\Employee', 'id', 'employee_id');
    }
    public static $otherPaymenttype = [
        'fixed' => 'Fixed',
        'percentage' => 'Percentage',
    ];
}
