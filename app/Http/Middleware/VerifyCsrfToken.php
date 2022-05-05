<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */
    protected $except = [
        'api/create_new_app',
        'api/create_new_notice',
        'api/create_infographics_message',
        'api/upload_new_file',
        'api/login'
    ];
}
