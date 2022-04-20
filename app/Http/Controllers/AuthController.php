<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class AuthController extends Controller
{
    public function getLogin(){
        return response()->json([
            'error'=>'User Unauthorized'
        ]);
    }

    public function login(Request $request){
        $user=User::where('name',$request->user_name)
           ->where('password',$request->password)->first();

           if($user){
               return response()->json([
                'token'=>$user->createToken($request->user_name)->plainTextToken,
               ]);
           }
    }
}
