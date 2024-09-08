<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\APIController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('/get-all-category',[APIController::class,'getAllCategory']);
Route::get('/get-all-trending-product',[APIController::class,'getAllTrendingProduct']);
Route::get('/get-all-category-product/{id}',[APIController::class,'getAllCategoryProduct']);
Route::get('/get-all-product-info/{id}',[APIController::class,'getProductInfo']);
