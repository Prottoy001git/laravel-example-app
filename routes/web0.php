<?php

use Illuminate\Support\Facades\Route;
use App\Models\Trainee;
use App\Http\Controllers\TraineeController;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('admin.pages.welcome', [
        'title' => 'Mina',
        'country' => 'BD'
    ]);
});


// Route::get('/users/{username}/profile/{id?}', function ($username, $id = null) {  // id is optional....(? means optional)
//     return view('admin.pages/users', [
//         'user' => $username,
//         'id' => $id
//     ]);
// });

// Route::get('/about', function () {
//     return view('pages/about');
// });

// OR
Route::view('/about', 'admin.pages/about');

// Route::get('/trainees/index', function () {
    // $trainees = [
    //     [
    //         'id' => 1,
    //         'name' => 'Mina',
    //         'email' => 'mina@mail.com',
    //         'country' => 'BD',
    //         'is_active' => true
    //     ],
    //     [
    //         'id' => 2,
    //         'name' => 'Raju',
    //         'email' => 'raju@mail.com',
    //         'country' => 'IND',
    //         'is_active' => false
    //     ],
    //     [
    //         'id' => 3,
    //         'name' => 'Kamal',
    //         'email' => 'kamal@mail.com',
    //         'country' => 'PAK',
    //         'is_active' => true
    //     ],
    // ];
//     return view('pages/trainees/index', [
//         // 'trainees' => $trainees
//         'trainees' => Trainee::all()
//     ]);
// });

Route::get('/trainees', [TraineeController::class, 'index']);

// Route::get('/trainees/{id}', function ($id) {
//     $trainees = [
//         [
//             'id' => 1,
//             'name' => 'Mina',
//             'email' => 'mina@mail.com',
//             'country' => 'BD',
//             'is_active' => true
//         ],
//         [
//             'id' => 2,
//             'name' => 'Raju',
//             'email' => 'raju@mail.com',
//             'country' => 'IND',
//             'is_active' => false
//         ],
//         [
//             'id' => 3,
//             'name' => 'Kamal',
//             'email' => 'kamal@mail.com',
//             'country' => 'PAK',
//             'is_active' => true
//         ],
//     ];
//     $single = array_filter($trainees, fn($item) => $item['id'] == $id);
//     $single = reset($single); //to reindex the array
//     dd($single);           //dump and die

//     return view('pages/trainees/show', [
//         // 'id' => $id,
//         // 'trainee' => $single
//         'trainee' => Trainee::findTrainee($id)
//     ]);
// });

Route::get('/trainees/{id}', [TraineeController::class, 'show']);

Route::get('/users', [UserController::class, 'index'])->name('users.index');
Route::get('/users/create', [UserController::class, 'create'])->name('users.create');
Route::post('/users', [UserController::class, 'store'])->name('users.store');
Route::get('/users/{id}/edit', [UserController::class, 'edit'])->name('users.edit');
Route::get('/users/{id}', [UserController::class, 'show'])->name('users.show');
Route::patch('/users/{id}', [UserController::class, 'update'])->name('users.update');
Route::delete('/users/{id}', [UserController::class, 'destroy'])->name('users.destroy');