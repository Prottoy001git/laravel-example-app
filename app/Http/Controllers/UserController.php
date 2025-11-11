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
        // =============
        // Query Builder
        // =============
        // $users = DB::table('users as u')

        // =============
        // Elequent ORM
        // =============
        // $users = User::select('users.id', 'users.first_name', 'users.last_name', 'users.email', 'r.name as Role')
        //     ->join('roles as r', 'users.role_id', '=', 'r.id')
        //     ->where('users.role_id', 1)
        //     ->orderBy('users.id', 'desc')
        //     ->get();
        // dd($users);

        // =============
        // Elequent ORM
        // =============
        // $users = User::from('users as u')
        //     ->select('u.id', 'u.first_name', 'u.last_name', 'u.email', 'r.name as role')
        //     ->join('roles as r', 'u.role_id', '=', 'r.id')
        //     ->orderBy('u.id', 'desc')
        //     ->skip(4)   //skip 4 rows
        //     ->take(PHP_INT_MAX) // then take rest of the rows
        //     ->get();

        $role_filter_id = request('role_id') ?? 0;
        // dd($role_id);

        $query = User::from('users as u')
            ->select('u.id', 'u.first_name', 'u.last_name', 'u.email', 'u.photo', 'r.name as role')
            ->join('roles as r', 'u.role_id', '=', 'r.id')
            ->orderBy('u.id', 'desc');
            // ->skip(4)   //skip 4 rows
            // ->take(PHP_INT_MAX) // then take rest of the rows
            // ->get();
            // ->paginate(10);   //10 items per page
            // ->paginate(3);      //3 items per page
        if($role_filter_id != 0){
            $query->where('u.role_id', $role_filter_id);
        }
        $users = $query->paginate(10);
        $users->appends(['role_id' => $role_filter_id]);

            // $sl = ($users->currentPage()-1) * $users->perPage() + 1;
        // return view('admin.pages.users.index', compact('users', 'sl'));
        $roles = Role::all();
        return view('admin.pages.users.index', compact('users', 'roles'));
    }
    public function show($id)
    {
        $user = User::from('users as u')
            ->select('u.id', 'u.first_name', 'u.last_name', 'u.email', 'photo', 'r.name as role')
            ->join('roles as r', 'u.role_id', '=', 'r.id')
            ->where('u.id', $id)
            ->first();
        return view('admin.pages.users.show', compact('user'));
    }
    public function destroy($id)
    {
        // $user = User::find($id);
        // $user->delete();
        User::destroy($id);
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

        // dd($request->file('photo'));
        // if not validated, below code will not even execute, User::create will not execute
        $request->validate([
            'first_name' => 'required|min:2|max:20',
            'last_name' => ['required', 'min:2', 'max:20'],
            'email' => ['required', 'email', 'unique:users'],
            'photo' => ['mimes:jpg,png,jpeg', 'image', 'max:500', 'dimensions:ratio=1/1,width=200,height=200'],
            'password' => ['required', 'min:6', 'confirmed'],
        ],[
            'photo.mimes' => 'Image must be jpg jpeg or png',
            'photo.dimensions' => 'Image dimension must be 200x200'
        ]);

        if($request->hasFile('photo'))
        {
            $photo = $request->file('photo')->store('users', 'public'); //goes into storage>app>public>(creates users folder if not created)>then file uploads here...
        }else{
            $photo=null;
        }

        // dd($photo);
        // dd($request->all());
        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'photo' => $photo,
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
