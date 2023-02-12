<?php

namespace App\Http\Controllers;

use App\Models\PayingSystem;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PayingSystemController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:paying-system-list', ['only' => ['index']]);
         $this->middleware('permission:paying-system-create', ['only' => ['create','store']]);
         $this->middleware('permission:paying-system-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:paying-system-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= PayingSystem::orderBy('name','asc')->get();
        $page_name ="Paying System Method";
        return view('backend.paying-system.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Paying System Method";
        return view('backend.paying-system.create',compact('page_name'));
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
        $data = new PayingSystem();
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
         return redirect()->back()
                        ->with('success','Data insert successfully'); 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PayingSystem  $PayingSystem
     * @return \Illuminate\Http\Response
     */
    public function show(PayingSystem $PayingSystem)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PayingSystem  $PayingSystem
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = PayingSystem::find($id);
        $page_name = "Paying System Method";
        return view("backend.paying-system.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PayingSystem  $PayingSystem
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);

        $data = PayingSystem::find($id);
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
        return redirect()->back()
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PayingSystem  $PayingSystem
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = PayingSystem::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
