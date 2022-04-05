<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\InfographicsPromo;

class InfographicsPromosController extends Controller
{
    public function index(){

    }

    public function store(Request $request){
        // $request->validate([
        //     'app_name' => 'required',
        //     'app_description' => 'required',
        //     'app_ipaddress' => 'required',
        //     'app_url' => 'required',
        //     'app_thumbnail' => 'required|mimes:jpg,png,jpeg|max:5048'
        // ]);

        $newImageName = time().'-'.$request->image_path;

        $request->image_path->move(public_path('infographics_displays'), $newImageName);
            
        $create_repo = InfographicsPromo::create([
            'infographics_description' => $request->input('infographics_description'),
            'image_path' => $newImageName,
            'display_duration' => $request->input('display_duration'),
            'display_status' => $request->input('display_status'),
        ]);

        if($create_repo){
            return response()->json(
                ['success'=>'Infographics promotion has been created successfully.']
            );
        }
    }
}
