@extends('master')
@section('content')
<?php $user = Auth::user();?>

<div class="container">
   <div class="row">
      @include('blocks.thong_tin_hien_thi')
      <div class="col-md-8">
         <form action="{{ route('postAddUserHobby') }}" method="post" accept-charset="utf-8" name="add_hobby_form">
         	<input type="hidden" name="_token" value="{{ csrf_token() }}">
            <h2>Sở thích của bạn</h2>
            <hr />
            <div class="form-group col-md-6">
               <label for="hobby" class="col-md-12 control-label">Danh mục</label>
               <div class="col-md-12">
                  <select name="type_hobby_id[]" class="type_hobby_sel">
                  	<option value="">Chon</option>}
                  	option
                     @foreach($type_hobby AS $value)
                     <option value="{{ $value->id }}">{{ $value->name }}</option>
                     @endforeach
                  </select>
               </div>
            </div>
            <div class="form-group col-md-6">
               <label for="hobby" class="col-md-12 control-label">So thich</label>
               <div class="col-md-12">
                  <select name="hobby_id[]" class="hobby_class hobby_class1">
                   <option value="">Chon</option>
                  </select>
               </div>   
            </div>
            <div class="form-group col-md-12 aspiration1">
               <label>Mong muốn</label>
               <textarea class="form-control" rows="5" name="aspiration[]"></textarea>
            </div>


            <div class="form-group col-md-6">
               <label for="hobby" class="col-md-12 control-label">Danh mục</label>
               <div class="col-md-12">
                  <select name="type_hobby_id[]" class="type_hobby_sel">
                  	<option value="">Chon</option>
                     @foreach($type_hobby AS $value)
                     <option value="{{ $value->id }}">{{ $value->name }}</option>
                     @endforeach
                  </select>
               </div>
            </div>
            <div class="form-group col-md-6">
               <label for="hobby" class="col-md-12 control-label">So thich</label>
               <div class="col-md-12">
                  <select name="hobby_id[]" class="hobby_class hobby_class2">
                   <option value="">Chon</option>
                  </select>
               </div>
            </div>
            <div class="form-group col-md-12 aspiration2">
               <label>Mong muốn</label>
               <textarea class="form-control" rows="5" name="aspiration[]"></textarea>
            </div>
            
            <button type="button" class="btn btn-default moreHobby">Them so thich</button>
            <button type="submit" class="btn btn-default">Luu</button>
         </form>
      </div>
   </div>
</div>
@endsection