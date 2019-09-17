<?php

Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(['prefix' => 'export', 'middleware' => 'auth'], function () {
    Route::get("/users/{type}", "HomeController@exportUsers")->name("export.users");
});

Route::group(['prefix' => 'backup', 'middleware' => 'auth'], function () {
    Route::get("/list", "BackupController@backupList")->name("backup.list");
    Route::get("/run", "BackupController@backupRun")->name("backup.run");
    Route::get("/clean", "BackupController@backupClean")->name("backup.clean");
    Route::get("/download", "BackupController@backupDownload")->name("backup.download");
});

Route::get('/home', 'HomeController@home')->name('home');
Route::get('/terms', 'HomeController@terms')->name('terms');
Route::get('/privacy', 'HomeController@privacy')->name('privacy');
Route::get('/about', 'HomeController@about')->name('about');
Route::get('/feedback', 'HomeController@feedbackForm')->name('feedback');
Route::post('/feedback', 'HomeController@sendFeedback')->name('feedback');

Route::get("/reset-device", "HomeController@resetDevice")->name("reset.device");

Route::get("/storage/{url}", "HomeController@getAssets")->name("get-assets-from-storage")->where('url', '.*$');
