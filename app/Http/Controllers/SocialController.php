<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SocialController extends Controller
{

    public function __construct(){
          $this->middleware('auth');
    }
    public function index(){
    	$medias = DB::table('social_media')->get();
    	return view('backend.social.index',compact('medias'));
    }

    public function create(){
    	return view('backend.social.add');
    }

    public function store(Request $request){

        $this->validate($request, [
            'name' => 'required',
            'url' => 'required',
            'icon' => 'required'
        ]);


    	DB::table('social_media')->insert([
    		'name'=>$request->name,
    		'url'=>$request->url,
            'icon'=>$request->icon,
            'status'=>$request->status ?? 0,
    	]);
    	return back()->with('success','Data insert successfully');
    }

    public function edit($id){
    	$media= DB::table('social_media')->where('id',$id)->first();
    	
    	return view('backend.social.edit',compact('media'));
    }

    public function update(Request $request){
         $this->validate($request, [
            'name' => 'required',
            'url' => 'required',
            'icon' => 'required'
        ]);
    	DB::table('social_media')->where('id',$request->id)
    	->update([
    		'name'=>$request->name,
    		'url'=>$request->url,
            'icon'=>$request->icon,
            'status'=>$request->status ?? 0,
    	]);
    	return redirect()->back()->with('success','Data insert successfully'); ;
    }

    public function delete($id){

       // return $id;
    	
    	DB::table('social_media')->where('id',$id)->delete();
    	return redirect()->back()->with('success','Data deleted successfully'); ;
    }
}
