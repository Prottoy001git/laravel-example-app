@extends('admin/layout/master')
@section('title', 'Trainee Details')
@section('content')
    <div class="container mt-5">
        <h2>Trainee Details</h2>
        <p>Trainee ID: {{ $trainee['id'] }}</p>
        <p>Trainee Name: {{ $trainee['name'] }}</p>
        <p>Trainee Email: {{ $trainee['email'] }}</p>
        <p>Trainee Country: {{ $trainee['country'] }}</p>
        <p>Trainee Status: {{ $trainee['is_active'] ? 'Active' : 'Inactive' }}</p>
    </div>
@endsection