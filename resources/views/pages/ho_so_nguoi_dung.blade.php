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
      <div class="col-md-9">
           {{ $userProfile['fullname'] }}
           @if($status == 0)
              <hr />
              <a href="{{ route('requestAddFriend', $userProfile['id']) }}" class="btn btn-info">Gui ket ban</a>
            @elseif($status == 2)
              <hr />
              <a href="{{ route('confirmFriend', $userProfile['id']) }}" class="btn btn-info">Xac nhan</a>
            @else
           
            @endif
      </div>
   </div>
</div>
@endsection
