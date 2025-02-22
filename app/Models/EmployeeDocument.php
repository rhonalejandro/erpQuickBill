<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EmployeeDocument extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'employee_id',
        'document_id',
        'document_value',
        'created_by'
    ];
}
