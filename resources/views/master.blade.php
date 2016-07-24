<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>OpFreeTime</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="{{ url('public/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ url('public/css/style.css') }}">
    <script src="{{ url('public/js/jquery.min.js') }}"></script>
    <script src="{{ url('public/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('public/js/myscript.js') }}"></script>

    <!-- Styles -->
   {{-- <link href="{{ elixir('css/app.css') }}" rel="stylesheet"> --}}

    <style>
        body {
            font-family: 'Lato';
        }

        .fa-btn {
            margin-right: 6px;
        }
    </style>
</head>
<body id="app-layout">
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Branding Image -->
                <a class="navbar-brand" href="{{ url('/') }}">
                    OpFreeTime
                </a>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->
                <ul class="nav navbar-nav">
                    <li><a href="{{ url('/home') }}">Home</a></li>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                        <li><a href="{{ url('/login') }}">Login</a></li>
                        <li><a href="{{ url('/register') }}">Register</a></li>
                    @else
                        <li><a href="">{{ Auth::user()->fullname }}</a></li>
                         <li><a href="{{ URL('/ban-be') }}">Bạn bè</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Thiet Lap<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="{{ route('updateGetInformation', Auth::user()->id) }}">Thong tin</a></li>
                                <li><a href="{{ route('getAddFixed') }}">Thoi gian ranh</a></li>
                                <li><a href="{{ route('getAddUserHobby') }}">Sở thích</a></li>
                            </ul>
                        </li>
                       <li><a href="{{ route('getSearch') }}">Tìm kiếm</a></li>
                        <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Dang xuat</a></li>

                    @endif
                </ul>
            </div>
        </div>
    </nav>

    @yield('content')

    <!-- JavaScripts -->
    
    {{-- <script src="{{ elixir('js/app.js') }}"></script> --}}
</body>
</html>
