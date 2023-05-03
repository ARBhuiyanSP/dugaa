<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\GeneralSettings;

class GeneralSettingsController extends Controller
{

     function __construct()
    {
         $this->middleware('permission:admin-settings|admin-settings-store', ['only' => ['settings','settingsSave']]);
         $this->middleware('permission:lock-permission', ['only' => ['lockAction','allLockSystem','allLock']]);
         
    }
    /*
    * General Settings Update
    *
    *
    */
    public function UserImageUpload($query) // Taking input image as parameter
    {
        $image_name = date('mdYHis') . uniqid();
        $ext = strtolower($query->getClientOriginalExtension()); // You can use also getClientOriginalName()
        $image_full_name = $image_name.'.'.$ext;
        $upload_path = 'images/';    //Creating Sub directory in Public folder to put image
        $image_url = $upload_path.$image_full_name;
        $success = $query->move($upload_path,$image_full_name);
 
        return $image_url; // Just return image
    }

    public function settings(Request $request){
    	$settings = GeneralSettings::first();
        $_accounts_group = \DB::table('account_groups')->select('id','_name')->where('_account_head_id',1)->get();
    	return view('backend.settings.index',compact('settings','_accounts_group'));
    }

      public function lockAction(Request $request){
        $_action = $request->_action;
        $_id = $request->_id;
        $_table_name = $request->_table_name;
        \DB::table($_table_name)->where('id',$_id)->update(['_lock'=>$_action]);
        return "ok";

    }

    public function settingsSave(Request $request){

        //return $request->all();
    	if($request->id ==''){
    		$settings = new GeneralSettings();
    	}else{
    		$settings = GeneralSettings::find($request->id);
    	}
    	$settings->title = $request->title ?? '';
    	$settings->name = $request->name ?? '';
    	$settings->_address = $request->_address ?? '';
    	$settings->_phone = $request->_phone ?? '';
    	$settings->_email = $request->_email ?? '';
    	$settings->keywords = $request->keywords ?? '';
    	$settings->author = $request->author ?? '';
    	$settings->url = $request->url ?? '';
        $settings->bg_image = $request->bg_image ?? '';
        $settings->footerContent = $request->footerContent ?? '';
        $settings->_cash_group = $request->_cash_group ?? '';
        $settings->_bank_group = $request->_bank_group ?? '';
        $settings->reg_notice = $request->reg_notice ?? '';
    	if($request->hasFile('logo')){ 
                $logo = $this->UserImageUpload($request->logo); 
                $settings->logo = $logo;
            }
        if($request->hasFile('footer_logo')){ 
                $footer_logo = $this->UserImageUpload($request->footer_logo); 
                $settings->footer_logo = $footer_logo;
            }
        $settings->save();
        return redirect()->back()
                        ->with('success','Information Save successfully');
    }
}
