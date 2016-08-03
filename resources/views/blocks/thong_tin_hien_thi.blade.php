<div class="col-md-3">
    <div class="information">
        <ul>
            <img class="avatar" src="{{ $user->image == '' ? asset('images/temp_avatar.jpg') : asset('resources/upload/images/users/'.$user->image) }}" alt="{{ $user->fullname }}" width="200px" height="200px">            <div class="info">
                <li><span  class="name_info">{{ $user->fullname }}</span></li>
                <li>{{ $user->email }} </li>
                <li>{{ $user->birthday }} </li>
                <?php 
                    $city = DB::table('cities')->select('name')->where('id' , $user->city_id)->first();
                    $district = DB::table('districts')->select('name')->where('id' , $user->district_id)->first();
                ?>
                <li>{{ isset($district->name) ? $district->name : null}}/ {{ isset($city->name) ? $city->name : null }}</li>
            </div>
            <hr />
            <li><a href="{{ route('myFreeTime', Auth::user()->id) }}">Thời gian rảnh</a></li>
            <li><a href="{{ route('getListUserHobby') }}">Sở thích</a></li>
            <li><a href="{{ route('tao-event') }}">Tạo sự kiện</a></li>
        </ul>
        <div class="clr"></div>
    </div>
</div>