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

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/home', 'HomeController@index');

#---------------------------------------------------------------
Route::group(['prefix' => 'user'], function () {
    Route::get('getRegister',['as'=>'getRegister','uses' => 'Auth\AuthController@getRegister']);
	Route::post('postRegister',['as'=>'postRegister','uses' => 'Auth\AuthController@postRegister']);
	Route::get('getLogin',['as'=>'getLogin', 'uses' => 'Auth\AuthController@getLogin']);
	Route::post('postLogin',['as'=>'postLogin', 'uses' => 'Auth\AuthController@postLogin']);
	Route::get('testLogin',['as'=>'testLogin', 'uses' => 'TestController@index']);


	Route::get('update/getInformation/{id}', ['as' => 'updateGetInformation' , 'uses' => 'Auth\AuthController@getUpdateInfor']);
	Route::post('update/postInformation/{id}', ['as' => 'updatePostInformation' , 'uses' => 'Auth\AuthController@postUpdateInfor']);
	//Route::get('update/information', ['as' => 'updateInformation' , 'uses' => 'UserController@getUpdate']);
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