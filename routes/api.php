<?php

use Illuminate\Http\Request;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\TweetController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::middleware('auth:sanctum')->post('/tweets', [TweetController::class, 'createTweet']);
Route::middleware('auth:sanctum')->put('/tweets/{id}', [TweetController::class, 'editTweet']);
Route::middleware('auth:sanctum')->post('/tweets/{id}/like', [TweetController::class, 'likeTweet']);
Route::middleware('auth:sanctum')->post('/tweets/{id}/comment', [TweetController::class, 'commentOnTweet']);
Route::middleware('auth:sanctum')->post('/follow/{id}', [AuthController::class, 'followUser']);
Route::middleware('auth:sanctum')->get('/timeline', [AuthController::class, 'timeline']);
