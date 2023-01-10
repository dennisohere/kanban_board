<?php

use App\Http\Controllers\CardController;
use App\Http\Controllers\ColumnController;
use App\Http\Controllers\DataController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('columns', [ColumnController::class, 'index']);
Route::post('columns', [ColumnController::class, 'store']);
Route::post('columns/sort-cards', [ColumnController::class, 'sortCards']);
Route::delete('columns/{column}', [ColumnController::class, 'destroy']);

Route::post('cards', [CardController::class, 'store']);

Route::get('list-cards', [CardController::class, 'listCards']);
