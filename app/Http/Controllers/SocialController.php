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
    	DB::table('social_media')->insert([
    		'name'=>$request->name,
    		'id_link'=>$request->id_link,
    	]);
    	return back();
    }

    public function edit($id){
    	$media= DB::table('social_media')->where('id',$id)->first();
    	
    	return view('backend.social.edit',compact('media'));
    }

    public function update(Request $request){
    	DB::table('social_media')->where('id',$request->id)
    	->update([
    		'name'=>$request->name,
    		'id_link'=>$request->id_link,
    	]);
    	return redirect('social');
    }

    public function delete($id){
    	
    	DB::table('social_media')->where('id',$id)->delete();
    	return redirect('social');
    }
}
