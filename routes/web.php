<?php

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'testing', 'middleware' => 'auth'], function () {
    Route::get('/mail', 'HomeController@test');
});

Route::group(['middleware' => 'auth'], function () {
    Route::get("/export/users/{type}", "HomeController@exportUsers")->name("export.users");
});

Route::get('/home', 'HomeController@home')->name('home');
Route::get('/terms', 'HomeController@terms')->name('terms');
Route::get('/privacy', 'HomeController@privacy')->name('privacy');
Route::get('/about', 'HomeController@about')->name('about');
Route::get('/feedback', 'HomeController@feedbackForm')->name('feedback');
Route::post('/feedback', 'HomeController@sendFeedback')->name('feedback');

Route::get("/reset-device", "HomeController@resetDevice")->name("reset.device");

Route::get("/storage/{url}", "HomeController@getAssets")->name("get-assets-from-storage")->where('url', '.*$');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
