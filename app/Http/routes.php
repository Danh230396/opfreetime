<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'HomeController@index');

Route::auth();

Route::get('/home', 'HomeController@index');
Route::get('/ban-be', 'UserController@listFriend');
Route::get('/danhsachbanbe', 'UserController@getFriend');

#---------------------------------------------------------------
Route::group(['prefix' => 'user'], function () {
    Route::get('getRegister',['as'=>'getRegister','uses' => 'Auth\AuthController@getRegister']);
	Route::post('postRegister',['as'=>'postRegister','uses' => 'Auth\AuthController@postRegister']);
	Route::get('getLogin',['as'=>'getLogin', 'uses' => 'Auth\AuthController@getLogin']);
	Route::post('postLogin',['as'=>'postLogin', 'uses' => 'Auth\AuthController@postLogin']);
	Route::get('testLogin',['as'=>'testLogin', 'uses' => 'TestController@index']);


	Route::get('update/getInformation/{id}', ['as' => 'updateGetInformation' , 'uses' => 'UserController@getUpdateInfor']);
	Route::post('update/postInformation/{id}', ['as' => 'updatePostInformation' , 'uses' => 'UserController@postUpdateInfor']);
	//Route::get('update/information', ['as' => 'updateInformation' , 'uses' => 'UserController@getUpdate']);

	#cac  route view ho so nguoi dung
	Route::get('view/{id}', ['as' => 'viewUserProfile', 'uses' => 'UserController@viewUserProfile']);
	#xu ly add Friend
	Route::get('addFriend/{id}', ['as' => 'requestAddFriend', 'uses' => 'UserController@addFriend']);
	#Confirm friend
	Route::get('confirmFriend/{id}', ['as' => 'confirmFriend', 'uses' => 'UserController@confirmFriend']);
});

#cac route cho hobby
Route::group(['prefix' => 'hobby'], function(){
	Route::group(['prefix' => 'fixed'], function(){
		#xuat ra form de add cac so thich vao trong
		Route::get('getAdd', ['as' => 'getAddFixedHobby', 'uses' => 'HobbyController@getAdd']);
		#Xu ly du lieu get duoc tu form, route nay co mot tham so truyen vao do la user_id
		Route::post('postAdd/{id}', ['as' => 'postAddFixedHobby', 'uses' => 'HobbyController@postAdd']);
	});
});


#cac route cho freeTime
Route::group(['prefix' => 'freeTime'], function(){

	Route::group(['prefix' => 'fixed'], function(){
		#xuat ra form de add cac so thich vao trong
		Route::get('getAdd', ['as' => 'getAddFixed', 'uses' => 'FixedTimeController@getAdd']);
		#Xu ly du lieu get duoc tu form, route nay co mot tham so truyen vao do la user_id
		Route::post('postAdd/{id}', ['as' => 'postAddFixed', 'uses' => 'FixedTimeController@postAdd']);
		#xuat ra form de cap nhat cac so thich vao trong
		Route::get('getEdit/{id}', ['as' => 'getEditFixed', 'uses' => 'FixedTimeController@getEdit']);
		#Xu ly du lieu get duoc tu form, route nay co mot tham so truyen vao do la id cua thoi gian ranh
		Route::post('postEdit/{id}', ['as' => 'postEditFixed', 'uses' => 'FixedTimeController@postEdit']);
		#ham xoa time ranh
		route::get('delete/{id}', ['as' => 'deleteFixed', 'uses' => 'FixedTimeController@delete']);
	});
	#Route nay show ra thoi gian ranh cua nguoi dung
	Route::get('myFreeTime/{user_id}', ['as' => 'myFreeTime', 'uses' => 'FreeTimeController@showFreeTime']);
});



Route::get('cities', ['as' => 'listCities', 'uses' => 'CityController@getList']);
Route::get('districtOfCity/{id}', ['as' => 'districtOfCity', 'uses' => 'CityController@getDistrict']);



#cac route cho User Hoppy
Route::group(['prefix' => 'userhobby'], function(){
	Route::get('getAdd', ['as' => 'getAddUserHobby', 'uses' => 'UserHobbyController@getAdd']);
	Route::post('postAdd', ['as' => 'postAddUserHobby', 'uses' => 'UserHobbyController@postAdd']);
	Route::get('getList', ['as' => 'getListUserHobby', 'uses' => 'UserHobbyController@getList']);
});

#cac route cho User Hoppy
Route::group(['prefix' => 'hobby'], function(){
	Route::get('getAdd', ['as' => 'getAddHobby', 'uses' => 'HobbyController@getAdd']);
});

Route::group(['prefix' => 'typeHobby'], function(){
	Route::get('getHobbies/{id}', ['as'=>'getHobbiesOfType','uses' => 'TypeHobbyController@getHobby']);
});

#cac route cho tim kiem
Route::get('getSearch', ['as' => 'getSearch', 'uses' => 'SearchController@getSearch']);
Route::post('postSearch', ['as' => 'postSearch', 'uses' => 'SearchController@postSearch']);
Route::get('resultSearch', ['as' => 'resultSearch', 'uses' => 'SearchController@resultSearch']);

#cac route cho viec thao tac voi blog
Route::group(['prefix' => 'event'], function(){
	Route::get('tao-event', ['as' => 'tao-event', 'uses' => 'EventController@getAdd']);
	Route::post('xl-event', ['as' => 'xl-event', 'uses' => 'EventController@postAdd']);
	Route::get('su-kien-cua-toi', ['as' => 'my-events', 'uses' => 'EventController@myEvents']);
});
Route::group(['prefix' => 'massage'], function(){
	Route::get('chat-box', ['as' => 'chat-box', 'uses' => 'MassageController@chatRoom']);
	Route::post('send-massage', ['as' => 'sendMassage', 'uses' => 'MassageController@sendMassage']);
	Route::get('load-massage/{user_id}', ['as' => 'loadMassage','uses' => 'MassageController@loadMassage']);
});


