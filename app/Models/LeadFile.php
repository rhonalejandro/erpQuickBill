<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LeadFile extends Model
{

    protected $connection = 'tenant';
    protected $fillable = [
        'lead_id',
        'file_name',
        'file_path',
    ];
}
