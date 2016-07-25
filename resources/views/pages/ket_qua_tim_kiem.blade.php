@extends('master')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
        @include('blocks.thong_tin_hien_thi')
        <div class="col-md-6">
            <h5>Tim kiem nhung nguoi ban mong muon</h5>
            <hr />
            
            <ul class="list-group result_ul">
              @foreach($users AS $user)
              <li>
                <img src="@if(isset($user->image)){{ asset('resources/upload/images/users/'.$user->image) }} @endif" alt="{{ $user->fullname }}">
                <a href="{{  route('viewUserProfile', $user->id) }}"><span>{{ $user->fullname }}</span></a><br />
                <i>Sinh Ngay: {{ $user->birthday }} -- Gioi tinh: {{ $user->gender }}</i><br />
                <i>Email: {{ $user->email }}</i><br />
                <p>{{ $user->intro }} </p>
                <div class="clr"></div>
              </li>
              @endforeach
             </ul>
        </div>
    </div>
</div>
@endsection
