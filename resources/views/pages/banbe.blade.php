@extends('master')
@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row"  id="banbe">
        @include('blocks.thong_tin_hien_thi')
        <input type="hidden" value="banbe" name="ten_trang">
        <div class="col-md-9">
            <div class="boxes">
                <ul class="count_ban">
                  <li class="search_friend">
                    <input type="text" name="search_friend"><button class="button_search" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                    <!-- Phan search se duoc thuc hien boi ajax va nam trong file myscript.js -->
                  </li>

                  <li class="friend">
                    <span><i class="fa fa-users" aria-hidden="true"></i><sup>{{ count($listFriend) }}</sup> Ban be</span>
                  </li>
                   <li class="submit">
                    <span><i class="fa fa-bell" aria-hidden="true"></i><sup>{{ count($listRequire) }}</sup> Yeu cau</span>
                  </li>
                  <li class="request">
                    <span><i class="fa fa-flag" aria-hidden="true"></i><sup>{{ count($listRequest) }}</sup> De nghi</span>
                  </li>
                </ul>
                <hr />
                 @if(isset($listFriend))
                <ul class="list_banbe">
                @foreach($listFriend AS $user)
                <?php if(empty($user)){ continue; } ?>
                  <li>
                    <div class="row">
                      <div class="col-md-11 col-sm-11 col-xs-11">
                        <div class="col-md-2 col-sm-2 col-xs-3">
                          <img src="{{ $user['image'] == '' ? asset('images/temp_avatar.jpg') : asset('resources/upload/images/users/'.$user['image']) }}" alt="{{ $user['fullname'] }}">
                        </div>
                        <div class="col-md-10 col-sm-10 col-xs-9">
                           <a href="{{  route('viewUserProfile', $user['id']) }}"><span>{{ $user['fullname'] }}</span></a><br />
                            <i>{{ $user['birthday'] }} -- {{ $user['gender'] }}</i><br />
                            <i>{{ $user['email'] }}</i><br />
                            <p>{{ $user['intro'] }} </p>
                        </div>
                      </div>
                      <div class="col-md-1 col-sm-1 col-xs-1 selection">
                            <span><i class="fa fa-exchange" aria-hidden="true"></i></span>
                            <ul>
                              <li><a href="#">HTML</a></li>
                              <li><a href="#">CSS</a></li>
                              <li><a href="#">JavaScript</a></li>
                            </ul>
                      </div>
                    </div>
                  </li>
                  @endforeach
              </ul>
            @endif
            </div>
        </div>
    </div>
    </div>
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
  </div>
</div>
@endsection
