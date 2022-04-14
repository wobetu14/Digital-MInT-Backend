<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AppReposController;
use App\Http\Controllers\CorporateNoticesController;
use App\Http\Controllers\AddressBooksController;
use App\Http\Controllers\InfographicsMessagesController;
use App\Http\Controllers\DownloadableFilesController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// MInT Digital Systems (App repos)
Route::get('all-apps',[AppReposController::class,'index']);
Route::get('app/{app_name}',[AppReposController::class,'searchAppRepo']);
Route::post('create_new_app',[AppReposController::class, 'store']);

// Corporate Notices
// Get all notices
Route::get('corporate_notices',[CorporateNoticesController::class, 'index']);
Route::post('create_new_notice',[CorporateNoticesController::class, 'store']);

// Corporate Notices displayed on the side bar
Route::get('side_notices',[CorporateNoticesController::class,'getSideNotices']);

// Address Book
Route::get('/address_book',[AddressBooksController::class,'index']);
Route::get('address_book/{directorate_name}',[AddressBooksController::class,'searchAddressBook']);


// Infographics Displays
Route::get('infographics_message_displays', [InfographicsMessagesController::class, 'index']);
Route::post('create_infographics_message', [InfographicsMessagesController::class, 'store']);

Route::get('downloadable_files',[DownloadableFilesController::class,'index']);
Route::post('upload_new_file',[DownloadableFilesController::class,'store']);
Route::get('downloadable_files/{file_title}',[DownloadableFilesController::class,'searchFile']);