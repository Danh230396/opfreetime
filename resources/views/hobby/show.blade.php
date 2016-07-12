@extends('layouts.app')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
        <div class="col-md-4">
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
        <div class="col-md-8">

            <table class="table">
                <caption>Sở thích</caption>
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Thể Loại</th>
                        <th>Môn</th>
                        <th>Mong muốn</th>
                        <th>Xóa</th>
                        <th>Cập nhật</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0; ?>
                    @foreach($hobbies AS $hobby)
                    <?php $i++; ?>
                    <tr>
                        <td>{{ $i }}</td>
                        <td>
                            <?php  $a = DB::table('type_hobbies')->where('id', $hobby['type_hobby_id'])->first(); echo $a->name;?>
                        </td>
                        <td>
                            <?php  $a = DB::table('hobbies')->where('id', $hobby['hobby_id'])->first(); echo $a->name;?>
                        </td>
                        <td>{{ $hobby['aspiration'] }}</td>
                        <td><a href=""><i class="fa fa-remove"></i>Xóa</a></td>
                        <td><a href=""><i class="fa fa-pencil"></i>Sửa</a></td>
                    </tr>
                    @endforeach
                    
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
