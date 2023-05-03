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
use App\Http\Controllers\DesignationController;
use App\Http\Controllers\CommitteeHistoryController;
use App\Http\Controllers\CommitteeController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\DocumentDownloadController;
use App\Http\Controllers\EventManageController;
use App\Http\Controllers\MemberRegistrationController;


//Account's Module

use App\Http\Controllers\AccountHeadController;
use App\Http\Controllers\MainAccountsController;
use App\Http\Controllers\AccountGroupController;
use App\Http\Controllers\AccountLedgerController;
use App\Http\Controllers\VoucherMasterController;






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

Route::get('new-member', 'App\Http\Controllers\FrontendController@newMember')->name('new-member');
Route::post('new-member-save', 'App\Http\Controllers\FrontendController@newMemberSave')->name('new-member-save');





Route::get('own-profile', [MemberInfoController::class,"ownProfile"])->name('own-profile');
    Route::post('own-profile-update', [MemberInfoController::class,"ownProfileUpdate"])->name('own-profile-update');



Route::group(['middleware' => ['auth']], function() {


    //#############################
    //
    //Account's Module Routes
    //
    //##############################

    Route::resource('account-type',AccountHeadController::class);
    Route::resource('main-accounts',MainAccountsController::class);
    Route::resource('account-group',AccountGroupController::class);
    Route::resource('account-ledger',AccountLedgerController::class);
   


    //Searching section 
    Route::any('ledger-search','App\Http\Controllers\AccountLedgerController@ledger_search');
    Route::any('main-ledger-search','App\Http\Controllers\AccountLedgerController@mainLedgerSearch');
    Route::any('type_base_group','App\Http\Controllers\AccountLedgerController@type_base_group');
    Route::any('group-base-ledger','App\Http\Controllers\AccountLedgerController@groupBaseLedger');
    Route::any('group-base-sms-ledger','App\Http\Controllers\AccountLedgerController@groupBaseSmsLedger');
    Route::any('group-base-bill-party-ledger','App\Http\Controllers\AccountLedgerController@groupBaseBillParty');

    
    Route::resource('voucher', VoucherMasterController::class);
    Route::post('voucher/update', 'App\Http\Controllers\VoucherMasterController@update');
    Route::get('voucher/print/{id}', 'App\Http\Controllers\VoucherMasterController@voucherPrint');
    Route::get('voucher-main-print', 'App\Http\Controllers\VoucherMasterController@voucherMainPrint');
    Route::get('voucher-detail-print', 'App\Http\Controllers\VoucherMasterController@voucherDetailPrint');
    Route::get('voucher-reset', 'App\Http\Controllers\VoucherMasterController@reset');
    Route::get('money-receipt-print/{id}', 'App\Http\Controllers\VoucherMasterController@moneyReceiptPrint');
    Route::get('money-payment-receipt/{id}', 'App\Http\Controllers\VoucherMasterController@moneyPaymentReceiptPrint');

    Route::post('master-base-detils','App\Http\Controllers\VoucherMasterController@masterBseDetails');
    Route::get('cash-receive','App\Http\Controllers\VoucherMasterController@cashReceive')->name('cash-receive');
    Route::get('bank-receive','App\Http\Controllers\VoucherMasterController@bankReceive')->name('bank-receive');
    Route::get('cash-payment','App\Http\Controllers\VoucherMasterController@cashPayment')->name('cash-payment');
    Route::get('bank-payment','App\Http\Controllers\VoucherMasterController@bankPayment')->name('bank-payment');



    Route::post('voucher-save','App\Http\Controllers\VoucherMasterController@voucherSave');


    //Admin Section start

    Route::resource('roles', RoleController::class);
    Route::resource('member-registration', MemberRegistrationController::class);

    Route::resource('event-management', EventManageController::class);
    Route::get('event-base-card/{id}', [EventManageController::class,'eventBaseCardPrint']);

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
    

    Route::resource('designations', DesignationController::class);
    Route::resource('committee-history', CommitteeHistoryController::class);
    Route::resource('committee', CommitteeController::class);
    Route::resource('document-upload', DocumentDownloadController::class);

    Route::get('social_media','App\Http\Controllers\SocialController@index')->name('social_media');
    Route::get('social-create','App\Http\Controllers\SocialController@create');
    Route::post('social-save','App\Http\Controllers\SocialController@store');
    Route::get('social-edit/{id}','App\Http\Controllers\SocialController@edit');
    Route::post('social-update','App\Http\Controllers\SocialController@update');
    Route::get('social-delete/{id}','App\Http\Controllers\SocialController@delete');

    
    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');
    Route::post('_lock_action','App\Http\Controllers\GeneralSettingsController@lockAction');

    Route::get('admin-post/{slug}', [PostController::class,'index'])->name('admin-post');
    Route::get('admin-post-create/{slug}', [PostController::class,'create'])->name('admin-post-create');
    Route::get('admin-post-edit/{id}', [PostController::class,'edit'])->name('admin-post-edit');
    Route::post('admin-post', [PostController::class,'store'])->name('admin-post.store');
    Route::get('post-image-remove', [PostController::class,'postImageRemove'])->name('post-image-remove');
    Route::resource('admin-post', PostController::class);
});

Route::get('page/{slug}', [FrontendController::class, 'customPage'])->name('home');
Route::get('post-detail/{slug}', [FrontendController::class, 'postDetail'])->name('post-detail');
Route::get('page-committee/{id}', [FrontendController::class, 'pageCommittee'])->name('page-committee');


