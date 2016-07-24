@extends('master')
@section('content')
<?php $user = Auth::user();?>
<script type="text/javascript">
   function loadfunction(){
   alert('Ok');
}
</script>
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
      <div class="col-md-9">
           {{ $userProfile['fullname'] }}
           @if($status == 0)
              <hr />
              <a href="{{ route('requestAddFriend', $userProfile['id']) }}" class="btn btn-info">Gui ket ban</a>
            @elseif($status == 2)
              <hr />
              <a href="{{ route('confirmFriend', $userProfile['id']) }}" class="btn btn-info">Xac nhan</a>
            @else
           
            @endif
      </div>
   </div>
</div>
@endsection
