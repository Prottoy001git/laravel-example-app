@extends('admin/layout/master')
@section('title', 'Users')
@section('content')
    <div class="container mt-5">
        <h2>Users List</h2>
        <div class="d-flex justify-content-end">
            <a href="{{ route('users.create') }}" class="btn btn-primary mb-3">Add New</a>
        </div>
        {{-- one time sesstion for showing success message --}}
        @if (session('success'))        
            <div class="alert alert-success" role="alert">
                {{ session('success') }}
            </div>
        @endif
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>SL</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $i => $item)
                    <tr>
                        <td>{{ $users->firstItem() + $i }}</td>
                        {{-- <td>{{ $sl }}</td> --}}
                        <td>{{ $item['first_name'] }}</td>
                        <td>{{ $item['last_name'] }}</td>
                        <td>{{ $item['email'] }}</td>
                        <td>{{ $item['role'] }}</td>
                        <td>
                            {{-- <a href="/trainees/{{ $item['id'] }}" class="btn btn-primary">View</a> --}}
                            <x-button bg="dark" href="/users/{{ $item['id'] }}">Details</x-button>
                            <a href="{{ route('users.edit', ['id' => $item['id'], 'page' => request('page', 1)]) }}" class="btn btn-success">Edit</a>
                            <form action="{{ route('users.destroy', $item['id']) }}" method="POST" class="d-inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                    {{-- @php
                        $sl++;
                    @endphp --}}
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="5">
                        {{-- this function creates pagination --}}
                        {{-- can customize pagination styles through these files 'vendor.pagination.bootstrap-5' --}}
                        {{-- add this through>>> php artisan vendor:publish --tag=laravel-pagination <<< this command --}}
                        {{ $users->links('vendor.pagination.bootstrap-5') }}
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
@endsection
