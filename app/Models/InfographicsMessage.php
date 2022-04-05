<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InfographicsMessage extends Model
{
    use HasFactory;

    protected $table='infographics_messages';

    protected $fillable=[
        'infographics_subject',
        'infographics_description',
        'image_path',
        'display_duration',
        'display_status'
    ];
}
