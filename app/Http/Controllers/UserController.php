<?php

namespace App\Http\Controllers;

use illuminate\Http\Request;
use illuminate\Support\Facades\DB;
use App\Models\User;
use PHPUnit\Event\Runtime\PHP;

class UserController extends Controller
{
    public function index()
    {
        // Query Builder
        // $users = DB::table('users as u')

        // Elequent ORM
        // $users = User::select('users.id', 'users.first_name', 'users.last_name', 'users.email', 'r.name as Role')
        //     ->join('roles as r', 'users.role_id', '=', 'r.id')
        //     ->where('users.role_id', 1)
        //     ->orderBy('users.id', 'desc')
        //     ->get();
        // dd($users);

        // Elequent ORM
        // $users = User::from('users as u')
        //     ->select('u.id', 'u.first_name', 'u.last_name', 'u.email', 'r.name as role')
        //     ->join('roles as r', 'u.role_id', '=', 'r.id')
        //     ->orderBy('u.id', 'desc')
        //     ->skip(4)   //skip 4 rows
        //     ->take(PHP_INT_MAX) // then take rest of the rows
        //     ->get();
        $users = User::from('users as u')
            ->select('u.id', 'u.first_name', 'u.last_name', 'u.email', 'r.name as role')
            ->join('roles as r', 'u.role_id', '=', 'r.id')
            ->orderBy('u.id', 'desc')
            // ->skip(4)   //skip 4 rows
            // ->take(PHP_INT_MAX) // then take rest of the rows
            // ->get();
            // ->paginate(10);   //10 items per page
            ->paginate(3);      //3 items per page
        return view('admin.pages.users.index', compact('users'));
    }
    public function show($id)
    {
        $user = User::from('users as u')
            ->select('u.id', 'u.first_name', 'u.last_name', 'u.email', 'r.name as role')
            ->join('roles as r', 'u.role_id', '=', 'r.id')
            ->where('u.id', $id)
            ->first();
        return view('admin.pages.users.show', compact('user'));
    }
}
