
$(document).ready(function(){
	
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
            