<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\StatusController;
use App\Mail\RegisterConfirmationMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});
// Route::get('/test-mail', function () {
//     Mail::to('redoanul66hasib@gmail.com')->send(new RegisterConfirmationMail());
//     return 'Mail Sent';
// });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    //===================
    // User Management Routes(Normal)
    //===================
    // Route::get('/users', [UserController::class, 'index'])->name('users.index');
    // Route::get('/users/create', [UserController::class, 'create'])->name('users.create');
    // Route::post('/users', [UserController::class, 'store'])->name('users.store');
    // Route::get('/users/{user}', [UserController::class, 'show'])->name('users.show');
    // Route::get('/users/{user}/edit', [UserController::class, 'edit'])->name('users.edit');
    // Route::patch('/users/{user}', [UserController::class, 'update'])->name('users.update');
    // Route::delete('/users/{user}', [UserController::class, 'destroy'])->name('users.destroy');

    //===================
    // User Management Routes(Using Route Controller)
    //===================
    Route::controller(UserController::class)->group(function () {
        Route::get('/users','index')->name('users.index');
        Route::get('/users/create','create')->name('users.create');
        Route::post('/users','store')->name('users.store');
        Route::get('/users/{user}', 'show')->name('users.show');
    });

    //===================
    // Use grouping to apply middleware to multiple routes
    //===================
    Route::middleware('role:1,3')->group(function () {  
        Route::get('/users/{user}/edit', [UserController::class, 'edit'])->name('users.edit');
        Route::patch('/users/{user}', [UserController::class, 'update'])->name('users.update');
        Route::delete('/users/{user}', [UserController::class, 'destroy'])->name('users.destroy');
    });
    
    // Route::resource('/users', UserController::class)->middleware('role:1,3'); // Only admin (role_id = 1,3) can access user management
    Route::resource('/status', StatusController::class);
});


require __DIR__.'/auth.php';
