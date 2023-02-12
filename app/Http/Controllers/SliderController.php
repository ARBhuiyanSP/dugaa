<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class SliderController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:slider-list', ['only' => ['index']]);
         $this->middleware('permission:slider-create', ['only' => ['create','store']]);
         $this->middleware('permission:slider-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:slider-delete', ['only' => ['destroy']]);
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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = Slider::orderBy('id','ASC')->get();
        $page_name = "Slider";
        return view('backend.slider.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        $page_name = "Slider";
        return view('backend.slider.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'=>'required',
            'slider_img'=>'required|image|mimes:jpeg,png,jpg,gif,svg',
            'status'=>'required',
            'posstion'=>'required',

        ]);

//        dump($request->slider_img);
        if($request->hasFile('slider_img')){
             $fileName = $this->UserImageUpload($request->slider_img);
        }

        Slider::create([
            'title' => $request->title,
            'sub_title' => $request->sub_title,
            'slider_img' => $fileName,
            'status' => $request->status,
            'posstion'=>$request->posstion
        ]);

        return redirect()->route('slider.index')
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function show(Slider $slider)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Slider::find($id);
        $page_name = "Slider";


        return View('backend.slider.edit',compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $slider = Slider::find($id);
        $slider->title = $request->title;
        $slider->sub_title = $request->sub_title;
        if($request->hasFile('slider_img')){
            $fileName = $this->UserImageUpload($request->slider_img);
            $slider->slider_img = $fileName;
        }
        $slider->status = $request->status;
        $slider->posstion = $request->posstion ?? 1;
        $slider->save();
        return redirect()->back()->with('success', 'Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slider = Slider::find($id);
        $slider->delete();
        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
