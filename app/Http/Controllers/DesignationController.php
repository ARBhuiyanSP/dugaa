<?php

namespace App\Http\Controllers;

use App\Models\Designation;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class DesignationController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:designations-list', ['only' => ['index']]);
         $this->middleware('permission:designations-create', ['only' => ['create','store']]);
         $this->middleware('permission:designations-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:designations-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Designation::orderBy('name','asc')->get();
        $page_name ="Committee Designation";
        return view('backend.designations.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Committee Designation";
        return view('backend.designations.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $data = new Designation();
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';

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
     * @param  \App\Models\Designation  $Designation
     * @return \Illuminate\Http\Response
     */
    public function show(Designation $Designation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Designation  $Designation
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Designation::find($id);
        $page_name = "Committee Designation";
        return view("backend.designations.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Designation  $Designation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
       

        $data = Designation::find($id);
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        
        $validator = Validator::make($data->toArray(), $data->rules());
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data->save();
        return redirect()->back()
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Designation  $Designation
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Designation::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
