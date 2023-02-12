<?php

namespace App\Http\Controllers;

use App\Models\MembershipType;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MembershipTypeController extends Controller
{
   function __construct()
    {
         $this->middleware('permission:membership-type-list', ['only' => ['index']]);
         $this->middleware('permission:membership-type-create', ['only' => ['create','store']]);
         $this->middleware('permission:membership-type-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:membership-type-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= MembershipType::orderBy('name','asc')->get();
        $page_name ="Membership Type";
        return view('backend.membership-type.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Membership Type";
        return view('backend.membership-type.create',compact('page_name'));
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
        $data = new MembershipType();
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
         return redirect()->back()
                        ->with('success','Data insert successfully'); 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MembershipType  $MembershipType
     * @return \Illuminate\Http\Response
     */
    public function show(MembershipType $MembershipType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MembershipType  $MembershipType
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MembershipType::find($id);
        $page_name = "Membership Type";
        return view("backend.membership-type.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MembershipType  $MembershipType
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);

        $data = MembershipType::find($id);
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
        return redirect()->back()
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MembershipType  $MembershipType
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = MembershipType::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
