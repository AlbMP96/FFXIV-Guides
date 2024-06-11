<?php

use App\Http\Controllers\GuidesController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', [GuidesController::class, 'index']);

Route::get('/news', [NewsController::class, 'index']);

Route::get('/guide', [GuidesController::class, 'create'])->middleware(['auth', 'verified'])->name('guide');

Route::post('/guide', [GuidesController::class, 'store']);

Route::get('/guide/{id}', [GuidesController::class, 'show']);

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
