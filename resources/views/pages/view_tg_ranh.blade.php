@extends('master')
@section('content')
<?php $user = Auth::user();?>
<script type="text/javascript">
   function loadfunction(){
   alert('Ok');
}
</script>
<div class="container">
  <input type="hidden" name="ten_trang" >
   <div class="row">
     @include('blocks.thong_tin_hien_thi')
      <div class="col-md-9">
      <div class="boxes">
        <ul class="stickyNote">
          <li>
            <a href="#">
              <h2>Hàng ngày</h2>
              @if(count($everyDate) > 0)
              @foreach($everyDate AS $item)
              <p>{!! str_replace(".","h",number_format( $item['startTime'], 2 )) !!} - {!! str_replace(".","h",number_format( $item['endTime'],2)) !!}</p>
              @endforeach
              @else
              <p>Không rảnh</p>
              @endif
            </a>
          </li>
          <li>
            <a href="#">
              <h2>Hàng tuần</h2>
              @if(count($everyWeek) > 0)
              @foreach($everyWeek AS $item)
              <p>Thứ {!! $item['day'] !!}: {!! str_replace(".","h",number_format( $item['startTime'], 2 )) !!} - {!! str_replace(".","h",number_format( $item['endTime'],2)) !!}</p>
              @endforeach
              @else
              <p>Không rảnh</p>
              @endif
            </a>
          </li>
          <li>
            <a href="#">
              <h2>Hàng tháng</h2>
              @if(count($everyMonth) > 0)
              @foreach($everyMonth AS $item)
              <p>Ngày {!! $item['date'] !!}: <br />{!! str_replace(".","h",number_format( $item['startTime'], 2 )) !!} - {!! str_replace(".","h",number_format( $item['endTime'],2)) !!}</p>
              @endforeach
              @else
              <p>Không rảnh</p>
              @endif
            </a>
          </li>
          <li>
            <a href="#">
              <h2>Hàng năm</h2>
              @if(count($everyYear) > 0)
              @foreach($everyYear AS $item)
              <p>Ngày {!! $item['date'] !!}/ {!! $item['month'] !!}: <br />{!! str_replace(".","h",number_format( $item['startTime'], 2 )) !!} - {!! str_replace(".","h",number_format( $item['endTime'],2)) !!}</p>
              @endforeach
              @else
              <p>Không rảnh</p>
              @endif
            </a>
          </li>
          
        </ul>
        </div>
      </div>
   </div>
</div>
@endsection
