<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChartOfAccountSubType extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'name',
        'type',
        'created_by',
    ];
}
