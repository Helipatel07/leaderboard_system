<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LeaderboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Leaderboard Routes
Route::get('/', [LeaderboardController::class, 'index'])->name('leaderboard.index');
Route::get('/leaderboard/filter', [LeaderboardController::class, 'filter'])->name('leaderboard.filter');
Route::get('/leaderboard/search', [LeaderboardController::class, 'search'])->name('leaderboard.search');
Route::post('/leaderboard/recalculate', [LeaderboardController::class, 'recalculate'])->name('leaderboard.recalculate');

/* Route::get('/', function () {
    return view('welcome');
}); */
