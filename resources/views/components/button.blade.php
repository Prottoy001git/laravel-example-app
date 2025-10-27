@props([
    'disable' => false,
    'bg' => 'dark',
    'type' => false,
    'href' => '#',
])

<a href="{{ $href }}" class="btn btn-{{ $bg }}" {{ $disable ? 'disabled' : '' }} type="{{ $type ? 'submit' : 'button' }}">
    {{ $slot }}
</a>
