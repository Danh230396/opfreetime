@extends('master')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
       @include('blocks.thong_tin_hien_thi')
        <div class="col-md-6 main_chat">
            <div class="chat_content">
                <h4 id="user_fullname">TỪ PHƯƠNG DANH</h4>
                <hr />
                <input type="hidden" name="chat_user_id" value="7">
                <div class="chat_box" id="chat_box">
                    
                    <!-- tin nhan se duoc load len bang ajax -->
                </div>
            </div>
            <!-- tat ca se duoc su ly bang ajax, trong file myscript -->
            <form action="{{ route('sendMassage') }}" name="form_chat" method="post" accept-charset="utf-8">
                <input name="_token" value="{{ csrf_token() }}" type="hidden">
                <input name="user_id" value="7" type="hidden">
                <div class="compose">
                    <textarea name="msg" class="form-control"></textarea>
                    <button type="button" id="sendMsg" class="btn btn-info">Gửi</button>
                </div>
            </form>

            <script type="text/javascript" charset="utf-8" async defer>
            
            </script>
        </div>
        <div class="col-md-3">
            <div id="box_friend">
                <h4>CHAT ROOM</h4>
                <hr />
            <!-- Tất cả sẽ được viết trong myscript.js -->
            </div>
        </div>
    </div>
</div>
@endsection
