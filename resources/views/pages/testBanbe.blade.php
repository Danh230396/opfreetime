@extends('master')
@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row" id="banbe">
        @include('blocks.thong_tin_hien_thi')
        <div class="col-md-9">
            <div class="boxes">
                <ul class="count_ban">
                  <li class="search_friend">
                    <input type="text" name="search_friend"><button type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                  </li>

                  <li class="friend">
                    <span><i class="fa fa-users" aria-hidden="true"></i><sup>56</sup> Ban be</span>
                  </li>
                   <li class="submit">
                    <span><i class="fa fa-bell" aria-hidden="true"></i><sup>16</sup> Yeu cau</span>
                  </li>
                  <li class="request">
                    <span><i class="fa fa-flag" aria-hidden="true"></i><sup>8</sup> De nghi</span>
                  </li>
                </ul>
                <hr />
                <ul class="list_banbe">
                  <li>
                    <div class="row">
                      <div class="col-md-11 col-sm-11 col-xs-11">
                        <div class="col-md-2 col-sm-2 col-xs-3">
                          <img src="{{ asset('images/temp_avatar.jpg') }}" alt="">
                        </div>
                        <div class="col-md-10 col-sm-10 col-xs-9">
                            <a href=""><span>{{ $user['fullname'] }}</span></a><br />
                            <i>{{ $user['birthday'] }} -- {{ $user['gender'] }}</i><br />
                            <i>{{ $user['email'] }}</i><br />
                            <p>Là một người thích thể thao, thích đọc sách, đôi khi hơi khùng khùng.... </p>
                        </div>
                      </div>
                      <div class="col-md-1 col-sm-1 col-xs-1 selection">
                         <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                         <span><i class="fa fa-remove" aria-hidden="true"></i></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-11 col-sm-11 col-xs-11">
                        <div class="col-md-2 col-sm-2 col-xs-3">
                          <img src="{{ asset('images/temp_avatar.jpg') }}" alt="">
                        </div>
                        <div class="col-md-10 col-sm-10 col-xs-9">
                            <a href=""><span>{{ $user['fullname'] }}</span></a><br />
                            <i>{{ $user['birthday'] }} -- {{ $user['gender'] }}</i><br />
                            <i>{{ $user['email'] }}</i><br />
                            <p>Là một người thích thể thao, thích đọc sách, đôi khi hơi khùng khùng.... </p>
                        </div>
                      </div>
                      <div class="col-md-1 col-sm-1 col-xs-1 selection">
                         <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                         <span><i class="fa fa-remove" aria-hidden="true"></i></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-11 col-sm-11 col-xs-11">
                        <div class="col-md-2 col-sm-2 col-xs-3">
                          <img src="{{ asset('images/temp_avatar.jpg') }}" alt="">
                        </div>
                        <div class="col-md-10 col-sm-10 col-xs-9">
                            <a href=""><span>{{ $user['fullname'] }}</span></a><br />
                            <i>{{ $user['birthday'] }} -- {{ $user['gender'] }}</i><br />
                            <i>{{ $user['email'] }}</i><br />
                            <p>Là một người thích thể thao, thích đọc sách, đôi khi hơi khùng khùng.... </p>
                        </div>
                      </div>
                      <div class="col-md-1 col-sm-1 col-xs-1 selection">
                         <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                         <span><i class="fa fa-remove" aria-hidden="true"></i></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-11 col-sm-11 col-xs-11">
                        <div class="col-md-2 col-sm-2 col-xs-3">
                          <img src="{{ asset('images/temp_avatar.jpg') }}" alt="">
                        </div>
                        <div class="col-md-10 col-sm-10 col-xs-9">
                            <a href=""><span>{{ $user['fullname'] }}</span></a><br />
                            <i>{{ $user['birthday'] }} -- {{ $user['gender'] }}</i><br />
                            <i>{{ $user['email'] }}</i><br />
                            <p>Là một người thích thể thao, thích đọc sách, đôi khi hơi khùng khùng.... </p>
                        </div>
                      </div>
                      <div class="col-md-1 col-sm-1 col-xs-1 selection">
                         <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                         <span><i class="fa fa-remove" aria-hidden="true"></i></span>
                      </div>
                    </div>
                  </li>
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection
 