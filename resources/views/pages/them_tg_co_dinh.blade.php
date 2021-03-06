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
      @include('blocks.thong_tin_hien_thi')
      <div class="col-md-6">
         <h2>Thời gian rảnh cố định</h2>
         <button name="submit" type="submit" onclick="$('#addFreeTime').submit();">Lưu</button>
         <hr />
         <form action="{{ route('postAddFixed', Auth::user()->id) }}" id="addFreeTime" method="post" accept-charset="utf-8">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <h3>Rảnh hàng ngày, ví dụ: 10h30 - 15h-40;
               <table class="table">
                  <thead>
                  <tr>
                    <th>Stt</th>
                    <th>Giờ bắt đầu</th>
                    <th>Giờ kết thức</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                     <td>1</td>
                     <td>
                       {!! FreeTime::loadStartTime("hStart[]", "mStart[]") !!}
                     </td>
                     <td>
                        {!! FreeTime::loadEndTime("hEnd[]", "mEnd[]") !!}
                        <input name="day[]" type="hidden" value="">
                        <input name="date[]" type="hidden" value="">
                        <input name="month[]" type="hidden" value="">
                        <input name="note[]" type="hidden" value="date">
                     </td>
                  </tr>
                  <tr>
                     <td>2</td>
                     <td>
                       {!! FreeTime::loadStartTime("hStart[]", "mStart[]") !!}
                     </td>
                     <td>
                         {!! FreeTime::loadEndTime("hEnd[]", "mEnd[]") !!}
                        <input name="day[]" type="hidden" value="">
                        <input name="date[]" type="hidden" value="">
                        <input name="month[]" type="hidden" value="">
                        <input name="note[]" type="hidden" value="date">
                     </td>
                  </tr>
                  
                </tbody>
              </table>
              <!-- Bang nay la cho thoi gian ranh trong ngay -->
              <h3>Thời gian rảnh trong tuần, ví dụ: 17h30-22h30 thứ 5</h3>
              <table class="table">
                  <thead>
                  <tr>
                    <th>Stt</th>
                    <th>Giờ bắt đầu</th>
                    <th>Giờ kết thức</th>
                    <th>Thứ trong tuần</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                      <td>
                        {!! FreeTime::loadStartTime("hStart[]", "mStart[]") !!}
                     </td>
                     <td>
                         {!! FreeTime::loadEndTime("hEnd[]", "mEnd[]") !!}
                    </td>
                    <td>
                        {!! FreeTime::loadDay("day[]") !!} 
                        <input name="date[]" value="" type="hidden">
                        <input name="month[]" value="" type="hidden">
                        <input name="note[]" value="week" type="hidden">
                    </td>
                  </tr>
                </tbody>
                </table>
                <!-- Bay nay la cho thoi gian ranh trong thang -->
                <h3>Thời gian rảnh trong tuần, ví dụ: 17h30-22h30 ngày 20 hàng tháng</h3>
              <table class="table">
                  <thead>
                  <tr>
                    <th>Stt</th>
                    <th>Giờ bắt đầu</th>
                    <th>Giờ kết thức</th>
                    <th>Ngày hàng tháng</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                      <td>
                       {!! FreeTime::loadStartTime("hStart[]", "mStart[]") !!}
                     </td>
                     <td>
                        {!! FreeTime::loadEndTime("hEnd[]", "mEnd[]") !!}
                    </td>
                    <td>
                        <input name="day[]" value="" type="hidden">
                        {!! FreeTime::loadDate("date[]") !!}
                        <input name="month[]" value="" type="hidden">
                        <input name="note[]" value="month" type="hidden">
                    </td>
                  </tr>
                </tbody>
                </table>
                <!-- Bang nay la cho thoi gian ranh hang nam -->
                <h3>Thời gian rảnh trong tuần, ví dụ: 17h30-22h30 ngày 20 tháng 3 hàng năm</h3>
              <table class="table">
                  <thead>
                  <tr>
                    <th>Stt</th>
                    <th>Giờ bắt đầu</th>
                    <th>Giờ kết thức</th>
                    <th>Ngày</th>
                    <th>Tháng</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                      <td>
                       {!! FreeTime::loadStartTime("hStart[]", "mStart[]") !!}
                     </td>
                     <td>
                        {!! FreeTime::loadEndTime("hEnd[]", "mEnd[]") !!}
                    </td>
                    <td>
                        <input name="day[]" value="" type="hidden">
                        <input name="note[]" value="year" type="hidden">
                        {!! FreeTime::loadDate("date[]") !!}
                    </td>
                    <td>
                        {!! FreeTime::loadMonth("month[]") !!}
                    </td>
                  </tr>
                </tbody>
                </table>
         </form>
      </div>
      <div class="col-md-3">
        @include('blocks.calendar')
      </div>
   </div>
</div>
@endsection
