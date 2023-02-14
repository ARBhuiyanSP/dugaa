<?php

namespace App\Http\Controllers;

use App\Models\Committee;
use App\Models\CommitteeHistory;
use App\Models\MemberInfo;
use App\Models\Designation;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class CommitteeController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:committee-list', ['only' => ['index']]);
         $this->middleware('permission:committee-create', ['only' => ['create','store']]);
         $this->middleware('permission:committee-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:committee-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= Committee::orderBy('committee_his_id','DESC')->get();
        $page_name ="Committee";
        return view('backend.committee.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name ="Committee";
        $categories = CommitteeHistory::get();
        $designations = Designation::orderBy('name','asc')->get();
        $members = MemberInfo::select('member_id','first_name','last_name','id')
                            ->orderBy('first_name','asc')
                            ->get();
        return view('backend.committee.create',compact('categories','page_name','members','designations'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Committee  $committee
     * @return \Illuminate\Http\Response
     */
    public function show(Committee $committee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Committee  $committee
     * @return \Illuminate\Http\Response
     */
    public function edit(Committee $committee)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Committee  $committee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Committee $committee)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Committee  $committee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Committee $committee)
    {
        //
    }
}
