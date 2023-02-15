<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Menu;
use App\Models\ImageModel;
use Illuminate\Http\Request;
use Auth;
use DB;

class PostController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:admin-post-list', ['only' => ['index']]);
         $this->middleware('permission:admin-post-create', ['only' => ['create','store']]);
         $this->middleware('permission:admin-post-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:admin-post-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($slug='')
    {
           $slug_detail= Menu::with(['parent_cat'])->where('slug',$slug)->first();
        if($slug_detail){
             $data=Post::with(['parent_cat','_images','_user'])
                        ->where('menu_id',$slug_detail->id)
                        ->orderBy('position','asc')
                        ->get();
            $page_name=$slug_detail->menu_name;
            $page_type = $slug_detail->page_type ?? 1;

            if($page_type==2){
                //Only page

                 return view('backend.admin-post.create_page',compact('slug_detail','page_name','data'));
            }elseif ($page_type==3){
                // Photo Gallary
                 return view('backend.admin-post.index_gallary',compact('slug_detail','page_name','data'));
            }
           // return $data;
            return view('backend.admin-post.index',compact('data','page_name','slug_detail'));
        }else{
            return "Url Not found";
        }

         
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function create($slug)
    {
        //return $slug;
         $slug_detail= Menu::with(['parent_cat'])->where('slug',$slug)->first();
        $page_name=$slug_detail->menu_name;
         $page_type = $slug_detail->page_type ?? 1;

        if($page_type==2){
            //Only page
             return view('backend.admin-post.create_page',compact('slug_detail','page_name'));
        }elseif ($page_type==3) {
            // Photo Gallary
             return view('backend.admin-post.create_gallary',compact('slug_detail','page_name'));
        }else{
             //Multiple Post
             return view('backend.admin-post.create',compact('slug_detail','page_name'));
        }


       
    }


    public function postImageRemove(Request $request){
        $id = $request->id;
        \DB::table("images")->where('id',$id)->delete();
        return "Image Delete successfully";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       // dump($request->all());
       // return $request->all();

         $this->validate($request, [
            'menu_id' => 'required',
            'post_title' => 'required',
            'status' => 'required',
        ]);
          $current_time = date('H:i:s');
          $id = $request->id ?? 0;

         if($request->form_name=="gallary"){
                if($id ==0){
                    $Post = new Post();
                 }else{
                    $Post = Post::find($id);
                 }

                 $Post->menu_id = $request->menu_id;
                 $Post->date = date('Y-m-d');
                 $Post->time = $current_time;
                 $Post->post_title = $request->post_title ?? '';
                 $Post->image_possition = $request->image_possition ?? 1;
                 $Post->post_subtitle = $request->post_subtitle ?? '';
                 $Post->details = $request->details ?? '';
                 $Post->author = Auth::user()->name ?? '';
                 $Post->image_hide_show = $request->image_hide_show ?? 1;
                 $Post->position = $request->position ?? 1;
                 $Post->status = $request->status ?? 1;
                 $Post->column_size = $request->column_size ?? 1;
                 $Post->_vedio_link_show = $request->_vedio_link_show ?? 0;
                 $Post->_vedio_link = $request->_vedio_link ?? '';
                 $Post->created_by = Auth::user()->id ?? '';


                 $Post->save();
                 $post_id = $Post->id;

                 $counter_row_array = $request->counter_row_array ?? '';
                 $number_of_rows = explode(",", $counter_row_array);
                 foreach ($number_of_rows as $key => $row_val) {
                    $_gallary_image_id = '_gallary_image_id_'.$row_val;
                    $gallary_vedio_link_ = 'gallary_vedio_link_'.$row_val;
                    $_gallary_post_title_ = '_gallary_post_title_'.$row_val;
                    $_gallary_post_sub_title_ = '_gallary_post_sub_title_'.$row_val;
                    $_gallary_status_ = '_gallary_status_'.$row_val;
                    $_gallary_dis_cloumn_ = '_gallary_dis_cloumn_'.$row_val;
                    $_gallary_serial_ = '_gallary_serial_'.$row_val;
                    $_gallary_image_ = '_gallary_image_'.$row_val;
                    $gallary_vedio_link_ = 'gallary_vedio_link_'.$row_val;
                    $is_vedio_ = 'is_vedio_'.$row_val;
                    $_gallary_is_dawnloadable_ = '_gallary_is_dawnloadable_'.$row_val;


                        $image_id = $request->$_gallary_image_id ?? 0;
                        if($image_id ==0){
                            $Image  = new ImageModel();
                        }else{
                            $Image  = ImageModel::find($image_id);
                        }
                        if($request->hasFile($_gallary_image_)){ 
                            $_image = $this->UserImageUpload($request->$_gallary_image_);
                            $Image->image = $_image; 
                        }
                        
                        $Image->post_id = $post_id;
                        $Image->menu_id = $request->menu_id;
                        $Image->status = $request->$_gallary_status_ ?? 0;
                        $Image->title = $request->$_gallary_post_title_ ?? '';
                        $Image->sub_title = $request->$_gallary_post_sub_title_ ?? '';
                        $Image->vedio_link = $request->$gallary_vedio_link_ ?? '';
                        $Image->_dis_cloumn = $request->$_gallary_dis_cloumn_ ?? '';
                        $Image->is_video = $request->$is_vedio_ ?? 0;
                        $Image->serial   = $request->$_gallary_serial_ ?? 1;
                        $Image->is_dawnloadable   = $request->$_gallary_is_dawnloadable_ ?? 0;
                        $Image->created_by   = Auth::user()->id ;
                        $Image->save();
                    }

                    
                     
                
         }

       

         if($request->form_name=="_post"){
                if($id ==0){
                    $Post = new Post();
                 }else{
                    $Post = Post::find($id);
                 }
                 
                 $Post->menu_id = $request->menu_id;
                 $Post->date = date('Y-m-d');
                 $Post->time = $current_time;
                 $Post->post_title = $request->post_title ?? '';
                 $Post->image_possition = $request->image_possition ?? 1;
                 $Post->post_subtitle = $request->post_subtitle ?? '';
                 $Post->details = $request->details ?? '';
                 $Post->author = Auth::user()->name ?? '';
                 $Post->image_hide_show = $request->image_hide_show ?? 1;
                 $Post->position = $request->position ?? 1;
                 $Post->status = $request->status ?? 1;
                 $Post->column_size = $request->column_size ?? 1;
                 $Post->created_by = Auth::user()->id ?? '';
                 $Post->_vedio_link_show = $request->_vedio_link_show ?? 0;
                 $Post->_vedio_link = $request->_vedio_link ?? '';
                 $Post->save();
                 $post_id = $Post->id;

                 $page_type = $request->page_type;
                 //if($page_type==2){

                    if($request->hasFile('image')){ 
                        $image_id = $request->image_id ?? 0;
                        if($image_id ==0){
                            $Image  = new ImageModel();
                        }else{
                            $Image  = ImageModel::find($image_id);
                        }
                       
                        $_image = $this->UserImageUpload($request->image); 
                        $Image->image = $_image;
                        $Image->post_id = $post_id;
                        $Image->menu_id = $request->menu_id;
                        $Image->status = $request->status ?? 1;
                        $Image->title = $request->image_title ?? '';
                        $Image->serial   = $request->image_serial ?? 0;
                        $Image->is_dawnloadable   = $request->is_dawnloadable ?? 0;
                        $Image->created_by   = Auth::user()->id ;
                        $Image->save();
                    }
                 //}
         }
         

         if($request->form_name=="_page"){
                if($id ==0){
                    $Post = new Post();
                 }else{
                    $Post = Post::find($id);
                 }
                 
                 $Post->menu_id = $request->menu_id;
                 $Post->date = date('Y-m-d');
                 $Post->time = $current_time;
                 $Post->post_title = $request->post_title ?? '';
                 $Post->image_possition = $request->image_possition ?? 1;
                 $Post->post_subtitle = $request->post_subtitle ?? '';
                 $Post->details = $request->details ?? '';
                 $Post->author = Auth::user()->name ?? '';
                 $Post->image_hide_show = $request->image_hide_show ?? 1;
                 $Post->position = $request->position ?? 1;
                 $Post->status = $request->status ?? 1;
                 $Post->column_size = $request->column_size ?? 1;
                 $Post->created_by = Auth::user()->id ?? '';
                 $Post->_vedio_link_show = $request->_vedio_link_show ?? 0;
                 $Post->_vedio_link = $request->_vedio_link ?? '';
                 $Post->save();
                 $post_id = $Post->id;

                 

                 $page_type = $request->page_type;
                

                    if($request->hasFile('image')){ 
                        ImageModel::where('post_id',$post_id)->update(['status'=>0]);
                         $image_id = $request->image_id ?? 0;
                        if($image_id ==0){
                            $Image  = new ImageModel();
                        }else{
                            $Image  = ImageModel::find($image_id);
                        }
                       
                        $_image = $this->UserImageUpload($request->image); 
                        $Image->image = $_image;
                        $Image->post_id = $post_id;
                        $Image->menu_id = $request->menu_id;
                        $Image->status = 1;
                        $Image->title = $request->image_title ?? '';
                        $Image->created_by = Auth::user()->id;
                        $Image->serial   = $request->image_serial ?? 1;
                        $Image->is_dawnloadable   = $request->is_dawnloadable ?? 0;
                        $Image->save();
                         
                    }
                 
         }
         
         

         return redirect()->back()->with('success','Data insert successfully');  
    }

     public function UserImageUpload($query) // Taking input image as parameter
    {
        $image_name = date('mdYHis') . uniqid();
        $ext = strtolower($query->getClientOriginalExtension()); // You can use also getClientOriginalName()
        $image_full_name = $image_name.'.'.$ext;
        $upload_path = 'post-image/';    //Creating Sub directory in Public folder to put image
        $image_url = $upload_path.$image_full_name;
        $success = $query->move($upload_path,$image_full_name);
 
        return $image_url; // Just return image
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit( $id)
    {

          $data = Post::with(['_images','parent_cat','_user'])->find($id);
         $image_details =  $data->_images ?? [];
         //echo sizeof($image_details);
        $slug_detail= Menu::with(['parent_cat'])->where('id',$data->menu_id)->first();
        $page_name=$slug_detail->menu_name;
         $page_type = $slug_detail->page_type ?? 1;
        if($page_type ==1){
            //Multiple Post
            //return $data;
             return view('backend.admin-post.edit_post',compact('slug_detail','page_name','data','image_details'));
        }elseif($page_type==2){
            //Only page
             return view('backend.admin-post.edit_page',compact('slug_detail','page_name','data','image_details'));
        }elseif ($page_type==3) {
            // Photo Gallary
             return view('backend.admin-post.edit_gallary',compact('slug_detail','page_name','data','image_details'));
        }else{
             //Multiple Post
             return view('backend.admin-post.create',compact('slug_detail','page_name','data','image_details'));
        }
        

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Post = Post::find($id);
        $Post->delete();
        return redirect()->back()->with('success', 'Delete Successfully');
        
    }
}
