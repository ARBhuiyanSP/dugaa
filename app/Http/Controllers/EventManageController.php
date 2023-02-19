<?php

namespace App\Http\Controllers;

use App\Models\EventManage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class EventManageController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:event-management-list', ['only' => ['index']]);
         $this->middleware('permission:event-management-create', ['only' => ['create','store']]);
         $this->middleware('permission:event-management-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:event-management-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= EventManage::orderBy('name','asc')->get();
        $page_name ="Event Management";
        return view('backend.event-management.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Event Management";
        return view('backend.event-management.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $event_folder="event-images";

        $data = new EventManage();
        $data->name = $request->name ?? '';
        $data->event_date = $request->event_date ?? '';
         if($request->hasFile('card_left_image')){
            $card_left_image = image_uploader($event_folder,$request->card_left_image);
            $data->card_left_image = $card_left_image ?? '';
        }
         if($request->hasFile('card_right_image')){
            $card_right_image = image_uploader($event_folder,$request->card_right_image);
            $data->card_right_image = $card_right_image ?? '';
        }
         if($request->hasFile('background_image')){
            $background_image = image_uploader($event_folder,$request->background_image);
            $data->background_image = $background_image ?? '';
        }
        
        $validator = Validator::make($data->toArray(), $data->rules());
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $data->save();
         return redirect()->back()
                        ->with('success','Data insert successfully'); 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\EventManage  $EventManage
     * @return \Illuminate\Http\Response
     */
    public function show(EventManage $EventManage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\EventManage  $EventManage
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = EventManage::find($id);
        $page_name = "Event Management";
        return view("backend.event-management.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\EventManage  $EventManage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        
        
         $event_folder="event-images";

        $data = EventManage::find($id);
        $data->name = $request->name ?? '';
        $data->event_date = $request->event_date ?? '';
         if($request->hasFile('card_left_image')){
            $card_left_image = image_uploader($event_folder,$request->card_left_image);
            $data->card_left_image = $card_left_image ?? '';
        }
         if($request->hasFile('card_right_image')){
            $card_right_image = image_uploader($event_folder,$request->card_right_image);
            $data->card_right_image = $card_right_image ?? '';
        }
         if($request->hasFile('background_image')){
            $background_image = image_uploader($event_folder,$request->background_image);
            $data->background_image = $background_image ?? '';
        }
        
        $validator = Validator::make($data->toArray(), $data->rules());
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        $data->save();
         return redirect()->back()
                        ->with('success','Data updated successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EventManage  $EventManage
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = EventManage::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
