<?php

namespace App\Http\Controllers;

use App\Models\DocumentDownload;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class DocumentDownloadController extends Controller
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
        $data = DocumentDownload::orderBy('id','ASC')->get();
        $page_name = "Document Upload";
        return view('backend.document-upload.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        $page_name = "Document Upload";
        return view('backend.document-upload.create',compact('page_name'));
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
            'name'=>'required',
            '_doc_file'=>'required',
            'status'=>'required',
            'serial'=>'required',

        ]);
       

        $data = new DocumentDownload();
        $data->name =$request->name ?? '';
        if($request->hasFile('_doc_file')){
             $fileName = $this->UserImageUpload($request->_doc_file);
             $data->_doc_file =$fileName;
        }
         $data->status =$request->status ?? 1;
         $data->serial =$request->serial ?? 1;
         $data->created_by =Auth::user()->id;
         $data->save();


        return redirect()->back()
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
        $data = DocumentDownload::find($id);
        $page_name = "Document Upload";


        return View('backend.document-upload.edit',compact('data','page_name'));
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
         $data =  DocumentDownload::find($id);
        $data->name =$request->name ?? '';
        if($request->hasFile('_doc_file')){
             $fileName = $this->UserImageUpload($request->_doc_file);
             $data->_doc_file =$fileName;
        }
         $data->status =$request->status ?? 1;
         $data->serial =$request->serial ?? 1;
         $data->created_by =Auth::user()->id;
         $data->save();
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
        $DocumentDownload = DocumentDownload::find($id);
        $DocumentDownload->delete();
        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
