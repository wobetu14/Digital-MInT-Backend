<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\InfographicsMessage;

class InfographicsMessagesController extends Controller
{
    public function index(){
        $infographicsMessages=InfographicsMessage::where('display_status', 'active')
        ->take(2)
        ->orderBy('created_at','desc')
        ->get();
        return response()->json($infographicsMessages);
    }

    public function store(Request $request){
        // $request->validate([
        //     'app_name' => 'required',
        //     'app_description' => 'required',
        //     'app_ipaddress' => 'required',
        //     'app_url' => 'required',
        //     'app_thumbnail' => 'required|mimes:jpg,png,jpeg|max:5048'
        // ]);

        $newImageName = time().'-'.$request->infographics_subject . '.'.$request->image_path->extension();

        $request->image_path->move(public_path('infographics_displays'), $newImageName);
            
        $create_infographics_message = InfographicsMessage::create([
            'infographics_subject'=>$request->input('infographics_subject'),
            'infographics_description' => $request->input('infographics_description'),
            'image_path' => $newImageName,
            'display_duration' => $request->input('display_duration'),
            'display_status' => $request->input('display_status'),
        ]);

        if($create_infographics_message){
            return response()->json(
                ['success'=>'Infographics promotion has been created successfully.']
            );
        }
    }
}
