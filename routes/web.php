<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SocialMediaController;





/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', 'App\Http\Controllers\FrontendController@index');
Route::get('/', 'App\Http\Controllers\FrontendController@index');
Route::get('sample-page', 'App\Http\Controllers\FrontendController@sample')->name('sample-page');
Route::get('journey-of-dugaa', 'App\Http\Controllers\FrontendController@journey')->name('journey-of-dugaa');
Route::get('social-responsibility', 'App\Http\Controllers\FrontendController@responsibility')->name('social-responsibility');
Route::get('news', 'App\Http\Controllers\FrontendController@news')->name('news');
Route::get('notice', 'App\Http\Controllers\FrontendController@notice')->name('notice');
Route::get('scholarship', 'App\Http\Controllers\FrontendController@scholarship')->name('scholarship');
Route::get('download', 'App\Http\Controllers\FrontendController@download')->name('download');
Route::get('contact', 'App\Http\Controllers\FrontendController@contact')->name('contact');

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');






Route::group(['middleware' => ['auth']], function() {
    //Admin Section start

    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('social_media', SocialMediaController::class);
    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');
});

