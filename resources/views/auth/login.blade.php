@extends('master')
@section('content')
<div class="container">
    <div class="row" id="login_page">
        <div class="col-md-12 welcome_opfreetime">
            <img src="{{ asset('images/logo.png') }}">
            <h1 class="solugan"><span>O</span>p<span>Free</span>Time - Tối ưu hóa thời gian rảnh của bạn</h1>
        </div>
         <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2 form_login">
                    <hr />
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('postLogin') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

                            <div class="col-xs-12">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email đăng nhập">

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <div class="col-xs-12">
                                <input id="password" type="password" class="form-control" name="password" placeholder="Mật khẩu">

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember"> Nhớ mật khẩu
                                    </label>
                                </div>
                        </div>
                        <div class="form-group button_login col-md-12">
                            <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-sign-in"></i> Đăng nhập
                            </button>

                            <a class="btn btn-link" href="{{ url('/password/reset') }}">Quên mật khẩu?</a>
                        </div>
                    </form>
                    <hr />
                
         </div>
    </div>
</div>
@endsection
