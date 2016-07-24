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
        
        <table class="table">
          <caption>Thời gian rảnh của tôi</caption>
          <thead>
            <tr>
              <th>Stt</th>
              <th>Thời gian</th>
              <th>Thứ</th>
              <th>Ngày</th>
              <th>Tháng</th>
              <th>Ghi chú</th>
              <th>Xóa - Sửa</th>
            </tr>
          </thead>
          <tbody>
          <?php $i = 0; 
          function replace($n){
            switch ($n) {
            case 'date':
                return 'Hàng ngày';
                break;
            case 'week':
                return 'Hàng tuần';
                break;
            case 'month':
                return 'Hàng tháng';
                break;
            case 'year':
                return 'Hàng năm';
                break;
            default:
                return null;
            }
          }

          ?>
            @foreach($fixedTime AS $item)
            <?php $i++; ?>
            <tr>
              <td>{{ $i }}</td>
              <td>{!! str_replace(".","h",number_format( $item['startTime'], 2 )) !!} - {!! str_replace(".","h",number_format( $item['endTime'],2)) !!}</td>
              <td>@if($item['day'] != 0)Thứ {!! $item['day'] !!} @endif</td>
              <td>@if($item['date'] != 0)Ngày {!! $item['date'] !!} @endif</td>
              <td>@if($item['month'] != 0)Tháng {!! $item['month'] !!} @endif</td>
              <td>{{ replace($item['note']) }}</td>
              <td><a href="{{ route('deleteFixed', $item['id']) }}">Xóa</a>  <a href="{{ route('getEditFixed', $item['id']) }}">Sửa</a></td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
   </div>
</div>
@endsection
