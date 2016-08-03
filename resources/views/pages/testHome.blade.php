@extends('master')
@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row" id="home">
       @include('blocks.thong_tin_hien_thi')
        <div class="col-md-6">
        	<div class="welcome_wrapper">
        		<img src="{{ asset('images/logo.png') }}" alt="Logo OpFreeTime" title="OpFreeTime">
        		<h1 class="solugan"><span>O</span>p<span>Free</span>Time - Tối ưu hóa thời gian rảnh của bạn</h1>
        	</div>
        	<div class="guild_wrapper">
        		<span class="ten">Xin chào, {{ $user->fullname }}</span>
        		<hr />
        			<p>Bạn là người dùng mới. Hãy thiết lập, để trải nghiệm lợi ích của OpFeeTime mang lại.</p>
        		<ul>
        			<li>
	        			<div>Thiết lập thông tin cá nhân.</div>
	        			<a href=""><i class="fa fa-cog" aria-hidden="true"></i></a>
	        		</li>
        			<div class="clr"></div>
        			<li>
        				<div>Cập nhật thời gian rảnh, điều này giúp người khác dễ dàng tìm thấy bạn.</div>
        				<a href=""><i class="fa fa-cog" aria-hidden="true"></i></a>
        			</li>
        			<div class="clr"></div>
        			<li>
        				<div>Cập nhật sở thích của bạn, điều này sẽ giúp bạn tìm được nhiều người cùng chung sở thích.</div>
        				<a href=""><i class="fa fa-cog" aria-hidden="true"></i></a>
        			</li>
        			<div class="clr"></div>
        			<li>
	        			<div>Tạo sự kiện.</div>
	        			<a href=""><i class="fa fa-cog" aria-hidden="true"></i></a>
        			</li>
        			<div class="clr"></div>
        		</ul>
        	</div>
        </div>
        <div class="col-md-3">
            <div id="box_friend" class="box_friend">
                <h4>CHAT ROOM</h4>
                <hr />
            <!-- Tất cả sẽ được viết trong myscript.js -->
            </div>
        </div>
    </div>
</div>
@endsection
