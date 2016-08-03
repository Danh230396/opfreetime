@extends('master')

@section('content')

<div class="container">
    <div class="row" id="register_page">
        <div class="col-md-12 welcome_opfreetime">
            <img src="{{ asset('images/logo.png') }}">
            <h1 class="solugan"><span>O</span>p<span>Free</span>Time - Tối ưu hóa thời gian rảnh của bạn</h1>
        </div>
        <div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2 form_login">
             <hr />
            <form class="form-horizontal" role="form" method="POST" action="{{ route('postRegister') }}">
                {{ csrf_field() }}

                <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                    <span for="name" class="col-md-4 control-label">Họ và tên</span>

                    <div class="col-md-6">
                        <input id="name" type="text" class="form-control" name="fullname" value="{{ old('name') }}">

                        @if ($errors->has('name'))
                            <span class="help-block">
                                <strong>{{ $errors->first('name') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                    <span for="email" class="col-md-4 control-label">Email</span>

                    <div class="col-md-6">
                        <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}">

                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>
                <div class="form-group{{ $errors->has('birthday') ? ' has-error' : '' }}">
                    <span class="col-md-4 control-label">Ngày sinh</span>

                    <div class="col-md-6">
                        <input id="birthday" type="date" class="form-control" name="birthday" value="{{ old('birthday') }}">

                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                    <span for="password" class="col-md-4 control-label">Mật khẩu</span>

                    <div class="col-md-6">
                        <input id="password" type="password" class="form-control" name="password">

                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                    <span for="password-confirm" class="col-md-4 control-label">Nhập lại</span>

                    <div class="col-md-6">
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation">

                        @if ($errors->has('password_confirmation'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password_confirmation') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <span>Đăng ký, là đồng ý với các điều khoản của Opfreetime</span>
                        <button type="submit" class="button_register"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Đăng ký
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
