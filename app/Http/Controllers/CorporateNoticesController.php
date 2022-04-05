<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CorporateNotice;

class CorporateNoticesController extends Controller
{
    public function index()
    {
        $corporate_notices=CorporateNotice::where('active_status','active')->orderBy('created_at','desc')->get();
        return response()->json($corporate_notices);
    }

    public function getSideNotices(){
        $getNotices=CorporateNotice::where('active_status','active')->orderBy('created_at','desc')->get()->take(3);
        return response()->json($getNotices);
    }
}
