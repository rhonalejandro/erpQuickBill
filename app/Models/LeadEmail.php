<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LeadEmail extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'lead_id',
        'to',
        'subject',
        'description',
    ];
}
