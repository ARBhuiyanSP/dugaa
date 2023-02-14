<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class CountryController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:countries-list', ['only' => ['index']]);
         $this->middleware('permission:countries-create', ['only' => ['create','store']]);
         $this->middleware('permission:countries-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:countries-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Country::orderBy('name','asc')->get();
        $page_name ="Country";
        return view('backend.countries.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Country";
        return view('backend.countries.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $data = new Country();
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
     * @param  \App\Models\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function show(Country $country)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Country::find($id);
        $page_name = "Country";
        return view("backend.countries.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
       

        $data = Country::find($id);
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
     * @param  \App\Models\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Country::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
