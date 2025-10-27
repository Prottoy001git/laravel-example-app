@extends('admin/layout/master')
@section('title', 'Users')
@section('content')
    <div class="container mt-5">
        <h2>Users List</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $item)
                    <tr>
                        <td>{{ $item['id'] }}</td>
                        <td>{{ $item['first_name'] }}</td>
                        <td>{{ $item['last_name'] }}</td>
                        <td>{{ $item['email'] }}</td>
                        <td>{{ $item['role'] }}</td>
                        <td>
                            {{-- <a href="/trainees/{{ $item['id'] }}" class="btn btn-primary">View</a> --}}
                            <x-button bg="dark" href="/users/{{ $item['id'] }}">View</x-button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="5">
                        {{-- this function creates pagination --}}
                        {{-- can customize pagination styles through these files 'vendor.pagination.bootstrap-5' --}}
                        {{-- add this through>>> php artisan vendor:publish --tag=laravel-pagination <<< this command--}}
                        {{ $users->links('vendor.pagination.bootstrap-5') }}
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
@endsection
