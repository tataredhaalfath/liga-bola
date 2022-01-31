<!DOCTYPE html>
<html lang="en">

<head>
    @include('includes.meta')
    <title>@yield('title')</title>

    {{-- Favicont --}}
    <link rel="apple-touch-icon" href="">
    <link rel="shortcut icon" type="image/x-icon" href="">

    @stack('before-style')
    {{-- Style --}}
    @include('includes.style')

    @stack('after-style')

</head>

<body>
    @include('includes.header')

    @yield('content')

    @include('includes.footer')
    @stack('berore-script')
    {{-- script --}}
    @include('includes.script')

    @stack('after-script')
</body>

</html>
