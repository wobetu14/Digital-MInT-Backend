<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AppRepo extends Model
{
    use HasFactory;

    protected $table='app_repos';

    protected $fillable=[
        'app_name',
        'app_description',
        'app_ipaddress',
        'app_url',
        // 'app_thumbnail'
    ];
}
