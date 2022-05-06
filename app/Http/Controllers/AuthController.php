<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class AuthController extends Controller
{
    public function authenticatedUser(){
        return Auth::user();
    }

    public function createAccount(Request $request){
        $user_fields=$request->validate(
            [
                'user_id'=>'required|string',
                'first_name'=>'required|string',
                'last_name'=>'required|string',
                'email'=>'required|string|unique:users,email',
                'password'=>'required|string|confirmed',
            ]
        );

        $user=User::create(
            [
                'user_id'=>$user_fields['user_id'],
                'first_name'=>$user_fields['first_name'],
                'last_name'=>$user_fields['last_name'],
                'email'=>$user_fields['email'],
                'password'=>bcrypt($user_fields['password']),
            ]
            );

            if($user){
                $response=[
                    'success'=>'User successfully created',
                    'user'=>$user,
                    'token'=>$token=$user->createToken($request->email)->plainTextToken
                ];
            }

            else{
                $response=[
                    'error'=>'Sorry! We could not create new record'
                ];
            }

            return response($response);
    }

    public function login(Request $request){
        $user_fields=$request->validate([
            'email'=>'required|string',
            'password'=>'required|string'
        ]);

        $auth_user=Auth::attempt(['email' => $user_fields['email'], 'password' => $user_fields['password']]);
        if($auth_user){
            $user=Auth::user();
            $response=[
                'logged_in'=>1,
                'user'=>$user,
                'token'=>$user->createToken($user->email)->plainTextToken
            ];
        }

        else {
            $response=[
                'logged_in'=>0,
                'login_error'=>'Invalid email or password.'
            ];
        }

        return response($response);

        // $user=User::where('email',$user_fields['email'])->first();
        //    if(!$user || !Hash::check($user_fields['password'], $user->password)){
        //     $response=[
        //         'error'=>'Invalid email or password.'
        //     ];
        //     return response($response, 401);
        //    }
        //     else {
        //         $response=[
        //             'user'=>$user,
        //             'token'=>$user->createToken($request->email)->plainTextToken,
        //         ];
        //         return response($response, 201);
        //     }
    }

}
