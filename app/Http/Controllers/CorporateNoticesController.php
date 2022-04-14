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

    public function store(Request $request){
        
        $newFileName = time().'-'.$request->notice_attachement->getClientOriginalName();

        $request->notice_attachement->move(public_path('notice_file_attachments'), $newFileName);
            
        $create_repo = CorporateNotice::create([
            'notice_audience' => $request->input('notice_audience'),
            'notice_owner' => $request->input('notice_owner'),
            'notice_subject' => $request->input('notice_subject'),
            'notice_main_content' => $request->input('notice_main_content'),
            'notice_attachement' => $newFileName,
        ]);

        if($create_repo){
            return response()->json(
                ['success'=>'New corporate notice has been created successfully.']
            );
        }
    }
}
