<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\GeneralSettings;

class GeneralSettingsController extends Controller
{
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
    	return view('backend.settings.index',compact('settings'));
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
    	if($request->hasFile('logo')){ 
                $logo = $this->UserImageUpload($request->logo); 
                $settings->logo = $logo;
            }
        $settings->save();
        return redirect()->back()
                        ->with('success','Information Save successfully');
    }
}
