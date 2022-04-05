<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DownloadableFile extends Model
{
    use HasFactory;

    protected $table='downloadable_files';

    protected $fillable=[
        'file_title',
        'file_description',
        'file_author',
        'file_owner',
        'file_name'
    ];
}
