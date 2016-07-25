@extends('master')

@section('content')
<?php $user = Auth::user();?>
<div class="container">
    <div class="row">
        @include('blocks.thong_tin_hien_thi')
        <div class="col-md-8">

            <table class="table">
                <caption>Sở thích</caption>
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Thể Loại</th>
                        <th>Môn</th>
                        <th>Mong muốn</th>
                        <th>Xóa</th>
                        <th>Cập nhật</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0; ?>
                    @foreach($hobbies AS $hobby)
                    <?php $i++; ?>
                    <tr>
                        <td>{{ $i }}</td>
                        <td>
                            <?php  $a = DB::table('type_hobbies')->where('id', $hobby['type_hobby_id'])->first(); echo $a->name;?>
                        </td>
                        <td>
                            <?php  $a = DB::table('hobbies')->where('id', $hobby['hobby_id'])->first(); echo $a->name;?>
                        </td>
                        <td>{{ $hobby['aspiration'] }}</td>
                        <td><a href=""><i class="fa fa-remove"></i>Xóa</a></td>
                        <td><a href=""><i class="fa fa-pencil"></i>Sửa</a></td>
                    </tr>
                    @endforeach
                    
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
