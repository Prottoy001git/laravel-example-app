<?php

namespace App\Http\Controllers;

use App\Models\status;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;  // must be included for DB facade (Query Builder)

class StatusController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    //  =============
    // Qeury Builder
    //  =============
    public function index()
    {
        // $status = DB::table('status')->get();
        // $status = DB::table('status')
        //             ->select('id', 'name')
        //             ->get();
        // $status = DB::select("select id, name from status");
        $status = DB::table('status')
                    ->select("is_active", DB::raw("count(*) as total")) //  count is an aggregate function, alias is total
                    ->groupBy('is_active')                              // group by is_active column is used for aggregate function count
                    ->get();
        dd($status);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(status $status)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(status $status)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, status $status)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(status $status)
    {
        //
    }
}
