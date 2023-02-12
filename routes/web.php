<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SocialMediaController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\HomePageSetupController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\DegreeController;
use App\Http\Controllers\ExamSessionController;
use App\Http\Controllers\GenderController;
use App\Http\Controllers\PayingSystemController;
use App\Http\Controllers\YearBatchController;
use App\Http\Controllers\MembershipTypeController;
use App\Http\Controllers\MemberInfoController;





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
    Route::resource('main-menu', MenuController::class);
    Route::resource('slider', SliderController::class);
    Route::resource('home-page-setup', HomePageSetupController::class);
    Route::resource('countries', CountryController::class);
    Route::resource('degrees', DegreeController::class);
    Route::resource('exam-session', ExamSessionController::class);
    Route::resource('gender', GenderController::class);
    Route::resource('paying-system', PayingSystemController::class);
    Route::resource('year-batch', YearBatchController::class);
    Route::resource('membership-type', MembershipTypeController::class);
    Route::resource('member-info', MemberInfoController::class);

    
    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');

    Route::get('admin-post/{slug}', [PostController::class,'index']);
    Route::get('admin-post-create/{slug}', [PostController::class,'create']);
    Route::get('admin-post-edit/{id}', [PostController::class,'edit']);
    Route::post('admin-post', [PostController::class,'store'])->name('admin-post.store');
    Route::get('post-image-remove', [PostController::class,'postImageRemove'])->name('post-image-remove');
    Route::resource('admin-post', PostController::class);
});

