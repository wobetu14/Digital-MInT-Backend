<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CorporateNotice extends Model
{
    use HasFactory;

    protected $table='corporate_notices';

    protected $fillable=[
        'notice_audience',
        'notice_owner',
        'notice_subject',
        'notice_main_content',
        'notice_attachement'
    ];
}
