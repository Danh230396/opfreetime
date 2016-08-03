<!DOCTYPE html>
<html lang="en">
<head>
    <title>OpFreeTime</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="author" content="Opfreetime">
    <meta name="keywords" content="Mạng xã hội, tối ưu hóa thời gian rảnh, kết nối mọi người,">
    <meta name="description" content="Opfreetim - Giúp bạn tối ưu hóa thời gian rảnh của mình để dành cho nhưng việc có ích.">
    <meta name="revisit-after" content="1 days">
    <meta name="robots" content="INDEX,FOLLOW">
    <meta itemprop="name" content="Chào mừng bạn đến với Opfreetime">
    <meta property="og:title" content="Chào mừng bạn đến với Opfreetime">
    <meta itemprop="description" content="Sokit - Chia sẻ những khoảnh khắc trong đời của bạn với mọi người.">
    <meta property="og:description" content="Opfreetim - Giúp bạn tối ưu hóa thời gian rảnh của mình để dành cho nhưng việc có ích.">
    <link rel="shortcut icon" href="{{ asset('images/icon.png') }}" type="image/png" sizes="16x16">
    <!-- Fonts -->
    <link rel="stylesheet" href="{{ url('public/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ url('public/fontawesome/css/font-awesome.min.css') }}">
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
    <nav class="navbar navbar-default navbar-static-top menu_wrapper">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
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
                
                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                        <li><a href="{{ url('/login') }}">Đăng nhập</a></li>
                        <li><a href="{{ url('/register') }}">Đăng ký</a></li>
                    @else
                        <li><a href="">{{ Auth::user()->fullname }}</a></li>
                         <li><a href="{{ URL('/ban-be') }}">Bạn bè</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Thiết lập<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="{{ route('updateGetInformation', Auth::user()->id) }}">Thông tin</a></li>
                                <li><a href="{{ route('getAddFixed') }}">Thời gian rảnh</a></li>
                                <li><a href="{{ route('getAddUserHobby') }}">Sở thích</a></li>
                            </ul>
                        </li>
                       <li><a href="{{ route('getSearch') }}">Tìm kiếm</a></li>
                        <li><a href="{{ url('/logout') }}">Đăng xuất</a></li>

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

