<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>

    {{-- Bootstrap CSS --}}
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">

    {{-- Font Awesome --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
        integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    @yield('style')
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-5">
            <a class="navbar-brand fw-bold" href="#">Navbar</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            {{-- Navbar links --}}
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('/') ? 'active bg-dark text-white rounded px-3' : '' }}"
                            href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('users') ? 'active bg-dark text-white rounded px-3' : '' }}"
                            href="/users">Users</a>
                    </li>
                </ul>

                {{-- User Dropdown --}}
                @auth
                    <div class="dropdown">
                        <button class="btn btn-white dropdown-toggle d-flex align-items-center" type="button"
                            id="userMenu" data-bs-toggle="dropdown" aria-expanded="false">
                            @if (Auth::user()->photo)
                                <img src="{{ asset('storage/' . Auth::user()->photo) }}" alt="Profile"
                                    class="rounded-circle me-2" width="40" height="40">
                            @else
                                <img src="https://placehold.co/50x50" alt="Profile" class="rounded-circle me-2"
                                    width="40" height="40">
                            @endif
                            <span>{{ Auth::user()->first_name . ' ' . Auth::user()->last_name }}</span>
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item text-center" href="{{ route('profile.edit') }}">My Profile</a>
                            </li>
                            <li>
                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <button type="submit" class="dropdown-item text-danger text-center">Log Out</button>
                                </form>
                            </li>
                        </ul>
                    </div>
                @endauth
            </div>
        </div>
    </nav>

    {{-- Page Content --}}
    <main class="container py-4">
        @yield('content')
    </main>

    {{-- Bootstrap JS --}}
    <script src="{{ asset('assets/js/bootstrap.bundle.js') }}"></script>

    {{-- Tooltip Init --}}
    <script>
        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
        [...tooltipTriggerList].map(el => new bootstrap.Tooltip(el));
    </script>

    @yield('script')
</body>

</html>
