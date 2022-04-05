<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DownloadableFile;

class DownloadableFilesController extends Controller
{
    public function index(){
        $files=DownloadableFile::all();
        return response()->json($files);
    }

    public function searchFile($file_title){
        $searchFile=DownloadableFile::where('file_title','like', '%'.$file_title.'%')->get();
        return response()->json($searchFile);
    }

    public function store(Request $request){
        // $request->validate([
        //     'file_title' => 'required',
        //     'file_description' => 'required',
        //     'file_author' => 'required',
        //     'file_owner' => 'required',
        //     'file_name' => 'required|mimes:pdf,xlx,csv|max:2048'
        // ]);

        $newFileName = time().$request->file_name->getClientOriginalName();

        $request->file_name->move(public_path('downloadable_files'), $newFileName);
            
        $create_infographics_message = DownloadableFile::create([
            'file_title'=>$request->input('file_title'),
            'file_description' => $request->input('file_description'),
            'file_author' => $request->input('file_author'),
            'file_owner' => $request->input('file_owner'),
            'file_name' => $newFileName, 
        ]);

        if($create_infographics_message){
            return response()->json(
                ['success'=>'New downloadable file uploaded successfully.']
            );
        }
    }
}
