<?php

namespace App\Http\Controllers;

use App\Models\Degree;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class DegreeController extends Controller
{
    
    function __construct()
    {
         $this->middleware('permission:degrees-list', ['only' => ['index']]);
         $this->middleware('permission:degrees-create', ['only' => ['create','store']]);
         $this->middleware('permission:degrees-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:degrees-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Degree::orderBy('name','asc')->get();
        $page_name ="Degree";
        return view('backend.degrees.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Degree";
        return view('backend.degrees.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $data = new Degree();
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
     * @param  \App\Models\Degree  $Degree
     * @return \Illuminate\Http\Response
     */
    public function show(Degree $Degree)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Degree  $Degree
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Degree::find($id);
        $page_name = "Degree";
        return view("backend.degrees.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Degree  $Degree
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        

        $data = Degree::find($id);
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
     * @param  \App\Models\Degree  $Degree
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Degree::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
