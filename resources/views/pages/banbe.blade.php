@extends('layouts.app')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
        @include('blocks.thong_tin_hien_thi')
        <div class="col-md-9">
            @if(isset($listRequest))
             <ul class="list-group result_ul">
              @foreach($listRequest AS $user)
              <?php if(empty($user)){ continue; } ?>
               <li>
                <img src="@if(isset($user['image'])){{ asset('resources/upload/images/users/'.$user['image']) }} @endif" alt="{{ $user['fullname'] }}">
                <a href="{{  route('viewUserProfile', $user['id']) }}"><span>{{ $user['fullname'] }}</span></a><br />
                <i>Sinh Ngay: {{ $user['birthday'] }} -- Gioi tinh: {{ $user['gender'] }}</i><br />
                <i>Email: {{ $user['email'] }}</i><br />
                <p>{{ $user['intro'] }} </p>
                <a href="{{ route('confirmFriend', $user['id']) }}" class="btn btn-info">Xac nhan</a>
                <div class="clr"></div>
              </li>
              @endforeach
              </ul>
            @endif
            <hr />

            @if(isset($listFriend))
            <ul class="list-group result_ul">
              @foreach($listFriend AS $user)
              <?php if(empty($user)){ continue; } ?>
               <li>
                <img src="@if(isset($user['image'])){{ asset('resources/upload/images/users/'.$user['image']) }} @endif" alt="{{ $user['fullname'] }}">
                <a href="{{  route('viewUserProfile', $user['id']) }}"><span>{{ $user['fullname'] }}</span></a><br />
                <i>Sinh Ngay: {{ $user['birthday'] }} -- Gioi tinh: {{ $user['gender'] }}</i><br />
                <i>Email: {{ $user['email'] }}</i><br />
                <p>{{ $user['intro'] }} </p>
                <div class="clr"></div>
              </li>
              @endforeach
              </ul>
            @endif
        </div>
    </div>
</div>
@endsection
