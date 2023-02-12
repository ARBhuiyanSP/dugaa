<?php

namespace App\Http\Controllers;

use App\Models\Gender;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class GenderController extends Controller
{
    
    function __construct()
    {
         $this->middleware('permission:gender-list', ['only' => ['index']]);
         $this->middleware('permission:gender-create', ['only' => ['create','store']]);
         $this->middleware('permission:gender-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:gender-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Gender::orderBy('name','asc')->get();
        $page_name ="Gender";
        return view('backend.gender.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Gender";
        return view('backend.gender.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);
        $data = new Gender();
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
         return redirect()->back()
                        ->with('success','Data insert successfully'); 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gender  $Gender
     * @return \Illuminate\Http\Response
     */
    public function show(Gender $Gender)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gender  $Gender
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Gender::find($id);
        $page_name = "Gender";
        return view("backend.gender.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Gender  $Gender
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);

        $data = Gender::find($id);
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
        return redirect()->back()
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gender  $Gender
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Gender::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
