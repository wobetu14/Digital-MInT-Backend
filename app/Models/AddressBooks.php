<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddressBooks extends Model
{
    use HasFactory;

    protected $table='address_books';

    protected $fillable=[
        'office_name_am',
        'office_name_en',
        'office_email',
        'office_phone',
        'office_responsibility',
        'director_name',
        'director_email',
    ];
}
