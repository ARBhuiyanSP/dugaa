<?php

namespace App\Http\Controllers;

use App\Models\MemberInfo;
use App\Models\Country;
use App\Models\Gender;
use App\Models\YearBatch;
use App\Models\ExamSession;
use App\Models\Degree;
use App\Models\MembershipType;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;





class MemberInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = MemberInfo::orderBy('id','asc')->get();
        $page_name = "Member Information";

        return view('backend.member-info.index',compact('data','page_name'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        $page_name = "Member Information";
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $countries = Country::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $yearbatches = YearBatch::orderBy('name','ASC')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $degress = Degree::orderBy('name','ASC')->get();
        //$PayingSystem = PayingSystem::orderBy('name','ASC')->get();

        return view('backend.member-info.create',compact('membership_types','page_name','countries','genders','yearbatches','examsessions','degress'));
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
     * @param  \App\Models\MemberInfo  $memberInfo
     * @return \Illuminate\Http\Response
     */
    public function show(MemberInfo $memberInfo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MemberInfo  $memberInfo
     * @return \Illuminate\Http\Response
     */
    public function edit(MemberInfo $memberInfo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MemberInfo  $memberInfo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MemberInfo $memberInfo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MemberInfo  $memberInfo
     * @return \Illuminate\Http\Response
     */
    public function destroy(MemberInfo $memberInfo)
    {
        //
    }
}
