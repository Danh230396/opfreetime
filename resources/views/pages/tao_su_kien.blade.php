@extends('master')
@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
       @include('blocks.thong_tin_hien_thi')
        <div class="col-md-6">
          <form class="form-horizontal" role="form" method="post" action="{{ route('xl-event') }}"  enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
           	<div class="form-group">
               <label class="control-label col-sm-2">Loại sự kiện:</label>
               <div class="col-sm-10"> 
                  	<select name="type_event" class="form-control">
                  		<option value="1">Giáo dục</option>
                  		<option value="2">Thể thao</option>
                  	</select>
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2">Tiêu đề sự kiện:</label>
               <div class="col-sm-10"> 
                  <input type="text" class="form-control" name="title_event" value="" placeholder="Tiêu đề sự kiện">
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="edu">Thời gian:</label>
               <div class="col-sm-6">
	                Từ: {!! FreeTime::loadStartTime("hStart", "mStart") !!}
	                ---đến--{!! FreeTime::loadEndTime("hEnd", "mEnd") !!}
               </div>
               <div class="col-sm-4">
               		<input type="date" class="form-control" name="date_event" value="" placeholder="Ngày tổ chức">
               </div>
            </div>
             <div class="form-group">
               <label class="control-label col-sm-2" for="edu">Địa chỉ:</label>
               <div class="col-sm-10"> 
                  <input type="text" class="form-control" name="address_event" value="" placeholder="Tên sự kiện">
               </div>
            </div>
           	<div class="form-group">
               <label class="control-label col-sm-2" for="edu">Nội dung:</label>
               <div class="col-sm-10">
	               <textarea name="content_event" class="form-control" rows="5"></textarea>
               </div>
            </div>
           	<div class="form-group">
           		<label class="control-label col-sm-2">Hình ảnh:</label>
               <div class="col-sm-10">
               		<input class="form-control" type="file" name="image_event">
               </div>
           	</div>
           	<div class="form-group">
           		
               <div class="col-sm-10">
               		<button type="submit" class="btn btn-danger">Tạo ngay</button>
               </div>
           	</div>
         </form>
        </div>
        <div class="col-md-3">
        	@include('blocks.calendar')
        </div>
    </div>
</div>
@endsection
