<?php

use App\Mail\FeedbackMail;
use App\User;
use Illuminate\Support\Facades\Mail;

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});


Route::get('/test', function () {
    $user_id = 3;
    $user = User::find($user_id);

    $subject = "Feedback from {$user->name}";
    $feedback = "test feedback";

    Mail::to(env('MAIL_USERNAME'))->send(new FeedbackMail($user, $subject, $feedback));
    return response(['message' => 'Feedback sent successfully.'], 200);
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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
