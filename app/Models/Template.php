<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Template extends Model
{

    protected $connection = 'tenant';
    use HasFactory;

    protected $fillable = [
        'template_name',
        'prompt',
        'field_json',
        'is_tone',
    ];
}
