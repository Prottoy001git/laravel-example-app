@extends('admin/layout/master')

@section('title', 'Welcome Page')

@section('content')
    <div class="container m-5">
        <h1>Hello {{ $title }}</h1>
        <h1>Welcome to {{ $country }}</h1>
        <x-button :type="true">
            Click Me :)
        </x-button>
        <x-button bg="danger" :disable="true">
            Don't Click Me
        </x-button>
    </div>
@endsection
