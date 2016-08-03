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
      <div class="col-md-8">
         <h2>Thong tin nguoi dung</h2>
         <hr />
         <form class="form-horizontal" role="form" method="post" action="{{ route('updatePostInformation', $user->id) }}"  enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="form-group">
               <label class="control-label col-sm-2">Hinh dai dien:</label>
               <div class="col-sm-10">
                  <img src="{{ $user->image == '' ? asset('images/temp_avatar.jpg') : asset('resources/upload/images/users/'.$user->image) }}" alt="{{ $user->fullname }}" width="200px" height="200px">
                  <input type="hidden" class="form-control" name="image_current" value="{{ old($user->image, isset($user->image) ? $user->image : null) }}">
                  <input type="file" class="form-control" name="image">
               </div>
            </div>
            <div class="form-group">
                 <label class="control-label col-sm-2">Giới tính:</label>
               <div class="col-sm-2"> 
                   <label><input type="radio" name="gender" <?php if(isset($user->gender)){ if($user->gender == 'Nam'){ echo 'checked'; }} ?> value="Nam">&nbsp;&nbsp;&nbsp;Nam</label>
               </div>
               <div class="col-sm-2"> 
                   <label><input type="radio" name="gender" <?php if(isset($user->gender)){ if($user->gender == 'Nữ'){ echo 'checked'; }} ?> value="Nữ">&nbsp;&nbsp;&nbsp;Nữ</label>
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2">Email:</label>
               <div class="col-sm-10"> 
                  <input type="text" class="form-control" name="email" placeholder="Điền kỹ năng của bạn" value="{{ old($user->email, isset($user->email) ? $user->email : null) }}">
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="city">Thành phố:</label>
               <div class="col-sm-4">
                  <select name="city" class="sle_city">

                     @if($cities)
                     @foreach($cities AS $city)
                     @if($user->city_id != $city['id'])
                     <option value="{{ $city['id'] }}">{{ $city['name'] }}</option>
                     @else
                      <option value="{{ $city['id'] }}" selected>{{ $city['name'] }}</option>
                     @endif
                     @endforeach
                     @endif
                  </select>
               </div>
               <label class="control-label col-sm-2" for="district">Quận/ Huyện:</label>
               <div class="col-sm-4">
                  <select name="district" class="sle_district">
                  </select>
                    
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="intro">Gioi thieu ngan:</label>
               <div class="col-sm-10"> 
                  <textarea class="form-control" rows="5" name="intro" id="intro" >{{ old($user->intro, isset($user->intro) ? $user->intro : null) }}</textarea>
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="skill">Kỹ năng:</label>
               <div class="col-sm-10"> 
                  <input type="text" class="form-control" name="skill" value="{{ old($user->skill, isset($user->skill) ? $user->skill : null) }}" placeholder="Điền kỹ năng của bạn">
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="edu">Học vấn:</label>
               <div class="col-sm-10"> 
                  <input type="text" class="form-control" name="edu" value="{{ old($user->education, isset($user->education) ? $user->education : null) }}" placeholder="Điền học vấn của bạn">
               </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="job">Công việc hiện tại:</label>
               <div class="col-sm-10"> 
                  <textarea class="form-control" rows="5" name="job">{{ old($user->job, isset($user->job) ? $user->job : null) }}</textarea>
               </div>
            </div>
            <div class="form-group">
               <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default">Submit</button>
               </div>
            </div>
         </form>
      </div>
   </div>
</div>
@endsection
