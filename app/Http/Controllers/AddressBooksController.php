<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AddressBooks;

class AddressBooksController extends Controller
{
    public function index(){
        $getAllAddresses=AddressBooks::all();
        return response()->json($getAllAddresses);
    }

    public function searchAddressBook($directorate_name){
        $searchAddressBook=AddressBooks::where('office_name_en','like', '%'.$directorate_name.'%')->get();
        return response()->json($searchAddressBook);
    }
}
