<?php

use Illuminate\Http\Request;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ApiAuthController;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:sanctum')->post('/user', function (Request $request) {
//     return $request->user();
// });



Route::post('/register', [ApiAuthController::class, 'register']);
Route::post('/login', [ApiAuthController::class, 'login']);
Route::post('/logout', [ApiAuthController::class, 'logout'])->middleware('auth:sanctum');

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/admin_view_result/{id}', [AdminController::class, 'admin_view_result_api']);
    Route::get('/registered_students', [AdminController::class, 'registered_students_api']);
});
