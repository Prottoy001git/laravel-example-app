@extends('admin/layout/master')
@section('title', 'User Details')
@section('content')
    <div class="container mt-5">
        @if ($user['id'] == Auth::user()->id)
        <h2>User Details</h2>
        <p>
            @if ($user['photo'] !== null)
                <img src="{{ asset('storage/' . $user['photo']) }}" alt="Profile Image" class="rounded-circle me-2" width="100">
            @else
                <img src="https://placehold.co/100" alt="Profile Image" class="rounded-circle me-2">
            @endif
        </p>
        <p>User ID: {{ $user['id'] }}</p>
        <p>User First Name: {{ $user['first_name'] }}</p>
        <p>User Last Name: {{ $user['last_name'] }}</p>
        <p>User Email: {{ $user['email'] }}</p>
        <p>User Role: {{ $user['role'] }}</p>
        @else
        <h2>You are not authorized to view this page.</h2>
        @endif
    </div>
@endsection
