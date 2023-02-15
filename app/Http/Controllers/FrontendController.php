<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Menu;
use App\Models\ImageModel;

//use DB;

class FrontendController extends Controller
{
    /* public function index(){
     	return redirect('login');
    } */

    public function index()
        {
            return view('welcome');
        }

    public function sample()
        {
            return view('sample');
        }

    public function journey()
        {
            return view('journey-of-dugaa');
        }

    public function responsibility()
        {
            return view('social-responsibility');
        }

    public function news()
        {
            return view('news');
        }

    public function notice()
        {
            return view('notices');
        }

    public function scholarship()
        {
            return view('scholarship');
        }

    public function download()
        {
            return view('download');
        }

    public function contact()
        {
            return view('contact');
        }


    public function customPage($slug=''){
        $slug_detail= Menu::with(['parent_cat'])->where('slug',$slug)->first();
        if($slug_detail){
           
             $data=Post::with(['parent_cat','_images','_user'])
                        ->where('menu_id',$slug_detail->id)
                        ->orderBy('position','asc')
                        ->paginate(10);
            $page_name=$slug_detail->menu_name;
            $page_type = $slug_detail->page_type ?? 1;
            if($page_type==2){

                 return view('pages.page',compact('slug_detail','page_name','data'));
            }elseif ($page_type==3){
                // Photo Gallary
                 return view('pages.gallary',compact('slug_detail','page_name','data'));
            }
           // return $data;
            return view('pages.post',compact('data','page_name','slug_detail'));

        }else{
            return view('404');
        }
        
    }

    
}
