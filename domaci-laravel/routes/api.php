<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CarShopController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\VehicleController;
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
Route::resource('/carshops',CarShopController::class)->only(['index']);
Route::resource('/vehicles',VehicleController::class)->only(['index']);
Route::resource('/users',UserController::class)->only(['index']);
Route::resource('/purchases',PurchaseController::class)->only(['index']);
Route::get('/carshop/{carshop_id}',[CarShopController::class,'show'])->name('carshops.show');
Route::get('/vehicle/{vehicle_id}',[VehicleController::class,'show'])->name('vehicles.show');
Route::get('/user/{user_id}',[UserController::class,'show'])->name('users.show');
Route::get('/purchase/{purchase_id}',[PurchaseController::class,'show'])->name('purchases.show');
Route::post('/carshop/store',[CarShopController::class,'store'])->name('carshop.store');
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
