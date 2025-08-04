<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Public route (login screen)
Route::get('/', function () {
    return view('login');
})->name("start");
Route::get('/store', [BookController::class, 'storeFront'])->middleware(['auth'])->name('store.front');

// Weather endpoint (public)
Route::get('/live-weather', [UserController::class, 'getLiveWeather']);

// Login & Logout
Route::get('/login', [UserController::class, 'showLoginForm'])->name('login.form');
Route::post('/login', [UserController::class, 'login'])->name('login.submit');
Route::post('/logout', [UserController::class, 'logout'])->name('logout')->middleware('auth');
Route::get('/books/{book}/detail', [BookController::class, 'detail'])->name('details')->middleware('auth');

// Routes only for authenticated ADMIN users
Route::middleware(['auth', 'admin'])->group(function () {
    
    // Home Dashboard
    Route::get('/home', [BookController::class, 'home'])->name('home');
    
    // Register new users (admin only)
    Route::get('/register', [UserController::class, 'showRegisterForm'])->name('register.form');
    Route::post('/register', [UserController::class, 'register'])->name('register.submit');

    // Book Management
    Route::post('/books', [BookController::class, 'store'])->name('books.store');
    Route::get('/books/{book}', [BookController::class, 'show'])->name('books.show');
    Route::put('/books/{book}', [BookController::class, 'update'])->name('books.update');
    Route::delete('/books/{book}', [BookController::class, 'destroy'])->name('books.destroy');

    // User Management
    Route::prefix('admin')->name('admin.')->group(function () {
        Route::put('/users/{user}', [UserController::class, 'update'])->name('users.update');
        Route::delete('/users/{user}', [UserController::class, 'destroy'])->name('users.destroy');
    });
});

Route::fallback(function () {
    return redirect()->route('start')->with('error', 'Page not found. Please login.');
});