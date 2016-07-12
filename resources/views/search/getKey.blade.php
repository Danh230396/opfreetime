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
            <h1>Tim kiem nhung nguoi ban mong muon</h1>
            <hr />
            <form class="form-horizontal" role="form" method="get" action="{{ route('resultSearch') }}">
                        {{ csrf_field() }}
                <!-- Dieu kien cho địa điểm  -->
                <div class="form-group row">
                   <label class="control-label col-md-2" for="city">Thành phố:</label>
                   <div class="col-md-4">
                      <select name="city" class="sle_city">
                         @if($cities)
                         @foreach($cities AS $city)
                         <option value="{{ $city['id'] }}">{{ $city['name'] }}</option>
                         @endforeach
                         @endif
                      </select>
                   </div>
                   <label class="control-label col-md-2" for="district">Quận/ Huyện:</label>
                   <div class="col-md-4">
                      <select name="district" class="sle_district">
                      </select>
                        
                   </div>
                </div>

                <!-- Điều kiện cho sở thích -->
                <div class="form-group row">
                   <label for="hobby" class="col-md-2 control-label">Danh mục</label>
                   <div class="col-md-4">
                      <select name="type_hobby" class="type_hobby_key">
                        <option value="">Chon</option>
                        @if(isset($type_hobby))
                         @foreach($type_hobby AS $value)
                         <option value="{{ $value->id }}">{{ $value->name }}</option>
                         @endforeach
                         @endif
                      </select>
                   </div>
                   <label for="hobby" class="col-md-2 control-label">So thich</label>
                   <div class="col-md-4">
                      <select name="hobby" class="hobby_class">
                       <option value="">Chon</option>
                      </select>
                   </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                    <p>Thoi gian bat dau</p>
                     {!! FreeTime::loadStartTime("hStart", "mStart") !!}
                    </div>
                    <div class="col-md-3">
                    <p>Thoi gian ket thuc</p>
                     {!! FreeTime::loadEndTime("hEnd", "mEnd") !!}
                    </div>
                </div>

                <hr />
                <div class="form-group col-md-12">
                    <button type="submit">Tim</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
