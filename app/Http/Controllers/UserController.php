<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
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

            // $sl = ($users->currentPage()-1) * $users->perPage() + 1;
        // return view('admin.pages.users.index', compact('users', 'sl'));
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
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();
        // dd('Deleted');
        return redirect()->route('users.index')->with('success', 'User deleted successfully!');
    }
    public function create()
    {
        $roles =Role::all();
        // dd($roles);   
        return view('admin.pages.users.create',compact('roles'));
    }
    public function edit($id)
    {
        $user =User::find($id);     
        $roles =Role::all();
        // dd($roles);   
        $page = request('page', 1);
        // dd($page);
        return view('admin.pages.users.edit',compact('roles', 'user', 'page'));
    }
    public function store(Request $request)
    {
        // if not validated, below code will not even execute, User::create will not execute
        $request->validate([
            'first_name' => 'required|min:2|max:20',
            'last_name' => ['required', 'min:2', 'max:20'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'min:6', 'confirmed'],
        ]);

        // dd($request->all());
        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => $request->password,
            'role_id' => $request->role_id,
        ]);
        // dd($user);
        return redirect()->route('users.index')->with('success', 'User created successfully!');
    }
    public function Update(Request $request, $id)
    {
        // dd($request->all());

        // if not validated, below code will not even execute, User::create will not execute
        $request->validate([
            'first_name' => 'required|min:2|max:20',
            'last_name' => ['required', 'min:2', 'max:20'],
        ]);

        // dd($request->all());
        $user = User::find($id);
        $user ->update([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'role_id' => $request->role_id
        ]);
        // dd($user);
        return redirect()->route('users.index', ['page' => $request->page])->with('success', 'User info updated successfully!');
    }
}
