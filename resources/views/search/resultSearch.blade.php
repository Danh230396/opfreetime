@extends('layouts.app')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <ul>
                <img src="{{ asset('resources/upload/images/users/'.$user->image) }}" alt="{{ $user->name }}" width="200px" height="200px">
                <li>Họ và tên: {{ $user->fullname }} </li>
                <li>Email: {{ $user->email }} </li>
                <li>Sinh ngày: {{ $user->birthday }} </li>
                <?php 
                    $city = DB::table('cities')->select('name')->where('id' , $user->city_id)->first();
                    $district = DB::table('districts')->select('name')->where('id' , $user->district_id)->first();
                ?>
                <li>Nơi ở: Quận {{ $district->name }}/ {{ $city->name }}</li>
                <li><a href="{{ route('myFreeTime', Auth::user()->id) }}">Thời gian rảnh</a></li>
                <li><a href="{{ route('getListUserHobby') }}">Sở thích</a></li>
            </ul>
        </div>
        <div class="col-md-6">
            <h5>Tim kiem nhung nguoi ban mong muon</h5>
            <hr />
            
            <ul class="list-group result_ul">
              @foreach($users AS $user)
              <li>
                <img src="@if(isset($user->image)){{ asset('resources/upload/images/users/'.$user->image) }} @endif" alt="{{ $user->fullname }}">
                <span>{{ $user->fullname }}</span><br />
                <i>Sinh Ngay: {{ $user->birthday }} -- Gioi tinh: {{ $user->gender }}</i><br />
                <i>Email: {{ $user->email }}</i><br />
                <p>{{ $user->intro }} </p>
                <div class="clr"></div>
              </li>
              @endforeach
             
        </div>
    </div>
</div>
@endsection
