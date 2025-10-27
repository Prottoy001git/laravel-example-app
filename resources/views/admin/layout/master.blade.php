<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">
    @yield('style')
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid px-5">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="d-flex">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('/') ? 'bg-dark text-white rounded' : '' }}"
                                href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('about') ? 'bg-dark text-white rounded' : '' }}"
                                href="/about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('trainees') ? 'bg-dark text-white rounded' : '' }}"
                                href="/trainees">Trainees</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('users') ? 'bg-dark text-white rounded' : '' }}"
                                href="/users">Users</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    @yield('content')

    <script src="{{ asset('assets/js/bootstrap.bundle.js') }}"></script>
    @yield('script')
</body>

</html>
