
$(document).ready(function(){

  var ten_trang = $('input[name="ten_trang"]').val();
	
	$('.type_hobby_sel').on('change', function() {
			var i = $(".type_hobby_sel").index(this) + 1;
		    var id = this.value;
		     $.ajax({
		        url: "/opfreetime/typeHobby/getHobbies/" + id,
		        type: 'get',
		        dataType: 'json',
		        success: function (output) {
		           var option = '';
		           $.each(output,function(key, item){
		              option += '<option value="' + item['id'] + '">' + item['name'] + '</option>';
		           });
		           $('.hobby_class' + i).html(option);
		        },
		     });
		  });

	$('.type_hobby_key').on('change', function() {
		var id = this.value;
		     $.ajax({
		        url: "/opfreetime/typeHobby/getHobbies/" + id,
		        type: 'get',
		        dataType: 'json',
		        success: function (output) {
		           var option = '';
		           $.each(output,function(key, item){
		              option += '<option value="' + item['id'] + '">' + item['name'] + '</option>';
		           });
		           $('.hobby_class').html(option);
		        },
		     });
		  });

      if(ten_trang == 'capnhat'){

         var id = $( ".sle_city" ).val();
		    $.ajax({
		        url: "/opfreetime/districtOfCity/" + id,
		        type: 'get',
		        dataType: 'json',
		        success: function (output) {
		          var option = '';
		          $.each(output,function(key, item){
		             option += '<option value="' + item['id'] + '">' + item['name'] + '</option>';
		          });
		          $('.sle_district').html(option);
		        },

		    });
      }
                        



         $('.sle_city').on('change', function() {
           var id = this.value;
           $.ajax({
              url: "/opfreetime/districtOfCity/" + id,
              type: 'get',
              dataType: 'json',
              success: function (output) {
                 var option = '';
                 $.each(output,function(key, item){
                    option += '<option value="' + item['id'] + '">' + item['name'] + '</option>';
                 });
                 $('.sle_district').html(option);
              },
           });
        });

        //Ham ajax này sẽ trả về danh sách bạn bè, và sẽ được hiển thị bên góc phải của trang chủ
        $.ajax({
            url: '/opfreetime/danhsachbanbe',
            type: 'GET',
            dataType: 'json',
            success: function(result){
                var html = '<div class="box"><ul>';
                $.each(result, function(key, item){
                    if(item.image != ''){
                      html += '<li class="li_friend"><img src="/opfreetime/resources/upload/images/users/' + item.image + '"><span id="span_username">' + item.fullname + '</span><input type="hidden" name="friend_id" value="' + item.id + '"></li>';
                    }else{
                      html += '<li class="li_friend"><img src="/opfreetime/images/temp_avatar.jpg"><span id="span_username">' + item.fullname + '</span><input type="hidden" name="friend_id" value="' + item.id + '"></li>';
                    }
                    
                });
                html += '</ul></div>'; 
                $("#box_friend").append(html);
                
            }
        });

        

        	// var friend_id = $(this).find('input[name="friend_id"]').val();
        	// console.log(friend_id);

        //Ham xu ly gui tin nhan khi click vao button
        $("#sendMsg").click(function(){
               var user_id = $('form[name="form_chat"]').find('input[name="user_id"]').val();
               var token = $('form[name="form_chat"]').find('input[name="_token"]').val();
               var msg = $('form[name="form_chat"]').find('textarea[name="msg"]').val();
               $.ajax({
                    url: '/opfreetime/massage/send-massage',
                    type: 'POST',
                    headers: {'X-CSRF-TOKEN': token},
                    cache: false,
                    data: {
                        "_token": token,
                        "user_id": user_id,
                        "msg": msg
                    },
                    
               });
               $('form[name="form_chat"]').find('textarea[name="msg"]').val("");
            });

        //Ham load masages le chat box
        
        if(ten_trang == 'chat'){
          setInterval(function(){
          var chat_user_id = $('input[name="chat_user_id"]').val();
         $.ajax({
            url: '/opfreetime/massage/load-massage/' + chat_user_id,
            type: 'GET',
            dataType: 'json',
            success: function(result){

                var html = '<ul>';
                $.each(result, function(key, item){
                    html += '<li onclick="testClick()">';
                    html += '<div class="hinh">';
                    html += '<img src="/opfreetime/resources/upload/images/users/' + item.image1 + '">';
                    html += '</div>';
                    html += '<div class="noi_dung">';
                    html += '<a href="#">' + item.fullname1 + '</a><br />';
                    html += '<span>' + item.msg + '</span>';
                    html += '</div>';
                    html += '<div class="clr"></div>';
                    html += '</li>';
                });
                html += '</ul>';
                $("#chat_box").html(html); 
                $(".li_friend").on('click',function(){
                  var friend_id = $(this).find('input[name="friend_id"]').val();
                  var friend_fullname = $(this).find( "#span_username" ).html();
                  $('input[name="chat_user_id"]').val(friend_id);
                  $('form[name="form_chat"]').find('input[name="user_id"]').val(friend_id);
                  $('#user_fullname').html(friend_fullname);
                });
                
            }
        }); }, 1000);
        }

        if(ten_trang == 'banbe'){
          $('.button_search').click(function(){
            var key = $('input[name="search_friend"]').val();
            $.ajax({
              url: '/opfreetime/user/searchFriend/' + key,
              type: 'GET',
              dataType: 'json',
              success: function(result){
                  var html = '';
                  $.each(result, function(key, item){
                    if(item != null){
                      html += '<li>';
                      html += '<div class="row">';
                      html += '<div class="col-md-11 col-sm-11 col-xs-11">';
                      html += '<div class="col-md-2 col-sm-2 col-xs-3">';
                      if(item.image != ''){
                        html += '<img src="resources/upload/images/users/' +item.image+'" alt="' + item.fullname + '">';
                      }else{
                        html += '<img src="images/temp_avatar.jpg" alt="' + item.fullname + '">';
                      }
                      html += '</div>';
                      html += '<div class="col-md-10 col-sm-10 col-xs-9">'
                      html += '<a href=""><span>' + item.fullname+'</span></a><br />';
                      html += '<i>' + item.birthday + ' -- ' + item.gender + '</i><br />';
                      html += '<i>' + item.email + '</i><br />';
                      html += '<p>' + item.intro + '</p>';
                      html += '</div>';
                      html += '</div>';
                      html += '<div class="col-md-1 col-sm-1 col-xs-1 selection">';
                      html += '<span><i class="fa fa-exchange" aria-hidden="true"></i></span>';
                      html += '</div>';
                      html += '</div>';
                      html += '</li>';
                    }
                  });
                  $(".list_banbe").html(html);
                  
              },
              error: function(){
                console.log('that bai');
              }
            });
            console.log('Da click');
          });
        }

        

       


		//Cái này có thể dùng first last, nhưng vấn để là làm s trả về được giá trị số
		// Nên hiện tại thì làm một cái thôi, thích thì thêm nữa chứ biết răng chừ
	// $(".moreHobby").click(function(){
	// 	var len = $(".type_hobby_sel").length;
	// 	var html = "<div class='form-group col-md-6'>";
 //            html +=   "<label for='hobby' class='col-md-12 control-label'>Danh mục</label>";
 //            html +=   "<div class='col-md-12'>";
 //            html +=   "<select name='type_hobby_id' class='type_hobby_sel'>";
 //            html +=    "<option value=''>Chon</option>@foreach($type_hobby AS $value)";
 //            html +=    "<option value='{{ $value->id }}'>{{ $value->name }}</option>@endforeach";
 //            html +=    "</select></div></div><div class='form-group col-md-6'>";
 //            html +=   "<label for='hobby' class='col-md-12 control-label'>So thich</label>";
 //            html +=   "<div class='col-md-12'>";
 //            html +=    "<select name='hobby_id' class='hobby_class hobby_class" + (len + 1) +"'>";
 //            html +=    "<option value=''>Chon</option></select></div></div>";
 //            html += "<div class='form-group col-md-12 aspiration" + (len + 1) +"'>";   //day ne
 //            html += "<label>Mong muốn</label>";   
 //            html += "<textarea class='form-control' rows='5' name='aspiration'></textarea></div>";
         
	// 	$(html).insertAfter('.aspiration'+len);
	// 	console.log(1);
	// });

});
            