@extends('master')
@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
       @include('blocks.thong_tin_hien_thi')
        <div class="col-md-6">
           <ul class="nav notify_class">
                @if(isset($notifies))
                @foreach($notifies AS $notify)
                <li>
                    <a href="#">
                    <img src="http://myhero.com/images/guest/g243/hero106692/bill%20gates.jpeg" alt="Bill Gates">
                    <b>{{ isset($notify->user_name) ? $notify->user_name : null }}</b> <span>{{ isset($notify->content) ? $notify->content : null }}</span>(Click to see more)
                    <div class="clr"></div>
                    </a>

                </li>
                @endforeach
                @endif
            </ul>
        </div>
        <div class="col-md-3">
            <div id="box_friend">
                <h4>CHAT ROOM</h4>
                <hr />
            <!-- Tất cả sẽ được viết trong myscript.js -->
            </div>
            <!-- <script>
            //     $.ajax({
            //         url: 'danhsachbanbe',
            //         type: 'GET',
            //         dataType: 'json',
            //         success: function(result){
            //             var html = '<ul>';
            //             $.each(result, function(key, item){
            //                 html += '<li><img width="50px" src="resources/upload/images/users/' + item.image + '"><span>' + item.fullname + '</li>';
            //             console.log(item.fullname);
            //             });
            //             html += '</ul>';
            //             $("#box_friend").html(html);
                        
            //         }
            //     });

            // </script> -->
        </div>
    </div>
</div>
@endsection
