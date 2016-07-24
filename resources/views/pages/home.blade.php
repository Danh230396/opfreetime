@extends('master')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
       @include('blocks.thong_tin_hien_thi')
        <div class="col-md-6">
           <ul class="nav notify_class">
                @foreach($notifies AS $notify)
                <li>
                    <a href="#">
                    <img src="http://myhero.com/images/guest/g243/hero106692/bill%20gates.jpeg" alt="Bill Gates">
                    <b>{{ $notify->user_name }}</b> <span>{{ $notify->content }}</span>(Click to see more)
                    <div class="clr"></div>
                    </a>

                </li>
                @endforeach

            </ul>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
@endsection
