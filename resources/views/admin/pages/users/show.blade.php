@extends('admin/layout/master')
@section('title', 'User Details')
@section('content')
    <div class="container mt-5">
        <h2>User Details</h2>
        <p>User ID: {{ $user['id'] }}</p>
        <p>User First Name: {{ $user['first_name'] }}</p>
        <p>User Last Name: {{ $user['last_name'] }}</p>
        <p>User Email: {{ $user['email'] }}</p>
        <p>User Role: {{ $user['role'] }}</p>
    </div>
@endsection