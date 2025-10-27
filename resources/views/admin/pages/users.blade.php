@extends('admin/layout/master')
@section('title', 'User')
@section('content')
    <div class="container m-5">
        <h1>Name: {{ $user }}</h1>
        {{-- @if ($id)
            <h5 class={{ $id ? '' : 'd-none'}}>Profile ID: {{ $id ?? 'Not Found' }}</h5>
        @endif --}}

        <h5 class={{ $id ? '' : 'd-none'}}>Profile ID: {{ $id ?? 'Not Found' }}</h5>
    </div>
@endsection
