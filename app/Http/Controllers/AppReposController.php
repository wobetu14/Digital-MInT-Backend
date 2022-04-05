<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AppRepo;

class AppReposController extends Controller
{
    public function index(){
        $all_repos=AppRepo::all();
        return response()->json($all_repos);
    }

    public function searchAppRepo($app_name){
        $searchAppRepo=AppRepo::where('app_name','like', '%'.$app_name.'%')->get();
        return response()->json($searchAppRepo);
    }

    public function store(Request $request){

        // $request->validate([
        //     'app_name' => 'required',
        //     'app_description' => 'required',
        //     'app_ipaddress' => 'required',
        //     'app_url' => 'required',
        //     'app_thumbnail' => 'required|mimes:jpg,png,jpeg|max:5048'
        // ]);

        $newImageName = time().'-'.$request->app_name . '.'.$request->app_thumbnail->extension();

        $request->app_thumbnail->move(public_path('app_thumbnails'), $newImageName);
            
        $create_repo = AppRepo::create([
            'app_name' => $request->input('app_name'),
            'app_description' => $request->input('app_description'),
            'app_ipaddress' => $request->input('app_ipaddress'),
            'app_url' => $request->input('app_url'),
            'app_thumbnail' => $newImageName,
        ]);

        if($create_repo){
            return response()->json(
                ['success'=>'App Info has been created successfully.']
            );
        }

    //    $create_repo=AppRepo::create($request->all());
    //    if($create_repo){
    //        return response()->json(
    //            ['success'=>'App Info has been created successfully.']
    //        );
    //    }
    }
}
