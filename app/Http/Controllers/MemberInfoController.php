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


     public function UserImageUpload($query) // Taking input image as parameter
    {
        $image_name = date('mdYHis') . uniqid();
        $ext = strtolower($query->getClientOriginalExtension()); // You can use also getClientOriginalName()
        $image_full_name = $image_name.'.'.$ext;
        $upload_path = 'member-images/';    //Creating Sub directory in Public folder to put image
        $image_url = $upload_path.$image_full_name;
        $success = $query->move($upload_path,$image_full_name);
 
        return $image_url; // Just return image
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $data = MemberInfo::with(['_gender','_member_ship_type','_entry_degree','_exit_degree'])
                            ->orderBy('id','asc')
                            ->get();
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
        //dump($request->all());
        //return $request->all();
        $this->validate($request, [
            'first_name' => 'required',
            'batch' => 'required',
            'alumni_category' => 'required',
            'entery_degree_completion_year' => 'required',
        ]);
        $MemberInfo = new MemberInfo();
        $MemberInfo->first_name= $request->first_name ?? '';
        $MemberInfo->last_name= $request->last_name ?? '';
        $MemberInfo->batch= $request->batch ?? '';
        $MemberInfo->entery_degree= $request->entery_degree ?? '';
        $MemberInfo->alumni_category= $request->alumni_category ?? '';
        $MemberInfo->admission_session= $request->admission_session ?? '';
        $MemberInfo->exit_degree= $request->exit_degree ?? '';
        $MemberInfo->entery_degree_completion_year= $request->entery_degree_completion_year ?? '';
        $MemberInfo->exit_year= $request->exit_year ?? '';
        $MemberInfo->current_affiliation= $request->current_affiliation ?? '';
        $MemberInfo->designation= $request->designation ?? '';
        $MemberInfo->current_address= $request->current_address ?? '';
        $MemberInfo->parmanent_address= $request->parmanent_address ?? '';
        $MemberInfo->contact_no= $request->contact_no ?? '';
        $MemberInfo->email= $request->email ?? '';
        $MemberInfo->note= $request->note ?? '';
        $MemberInfo->entry_by= \Auth::user()->id;
        if($request->hasFile('member_image')){ 
            $member_image = $this->UserImageUpload($request->member_image);
            $MemberInfo->member_image = $member_image; 
        }
        if($request->hasFile('scanced_form')){ 
            $scanced_form = $this->UserImageUpload($request->scanced_form);
            $MemberInfo->scanced_form = $scanced_form; 
        }
        $MemberInfo->save();
        $member_id = $MemberInfo->id;

       $member_number = MemberInfo::where('alumni_category',$request->alumni_category)
                                    ->where('batch',$request->batch)
                                    ->where('entery_degree_completion_year',$request->entery_degree_completion_year)
                                    ->count();
        $alumin_id = alumni_category_code_by_id($request->alumni_category).$request->batch."B".$request->entery_degree_completion_year."M".$member_number;
        MemberInfo::where('id',$member_id)->update(['member_id'=>$alumin_id]);

        return redirect()->back()->with('success','Data insert successfully'); 

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
    public function edit($id)
    {
        $page_name = "Member Information";
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $countries = Country::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $yearbatches = YearBatch::orderBy('name','ASC')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $degress = Degree::orderBy('name','ASC')->get();
        $data = MemberInfo::find($id);

        return view('backend.member-info.edit',compact('membership_types','page_name','countries','genders','yearbatches','examsessions','degress','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MemberInfo  $memberInfo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'first_name' => 'required',
            'batch' => 'required',
            'alumni_category' => 'required',
            'entery_degree_completion_year' => 'required',
        ]);
        $MemberInfo = MemberInfo::find($id);
        $MemberInfo->first_name= $request->first_name ?? '';
        $MemberInfo->member_id= $request->member_id ?? '';
        $MemberInfo->last_name= $request->last_name ?? '';
        $MemberInfo->batch= $request->batch ?? '';
        $MemberInfo->entery_degree= $request->entery_degree ?? '';
        $MemberInfo->alumni_category= $request->alumni_category ?? '';
        $MemberInfo->admission_session= $request->admission_session ?? '';
        $MemberInfo->exit_degree= $request->exit_degree ?? '';
        $MemberInfo->entery_degree_completion_year= $request->entery_degree_completion_year ?? '';
        $MemberInfo->exit_year= $request->exit_year ?? '';
        $MemberInfo->current_affiliation= $request->current_affiliation ?? '';
        $MemberInfo->designation= $request->designation ?? '';
        $MemberInfo->current_address= $request->current_address ?? '';
        $MemberInfo->parmanent_address= $request->parmanent_address ?? '';
        $MemberInfo->contact_no= $request->contact_no ?? '';
        $MemberInfo->email= $request->email ?? '';
        $MemberInfo->note= $request->note ?? '';
        $MemberInfo->entry_by= \Auth::user()->id;
        if($request->hasFile('member_image')){ 
            $member_image = $this->UserImageUpload($request->member_image);
            $MemberInfo->member_image = $member_image; 
        }
        if($request->hasFile('scanced_form')){ 
            $scanced_form = $this->UserImageUpload($request->scanced_form);
            $MemberInfo->scanced_form = $scanced_form; 
        }
        $MemberInfo->save();
        $member_id = $MemberInfo->id;

       // $member_number = MemberInfo::where('alumni_category',$request->alumni_category)
       //                              ->where('batch',$request->batch)
       //                              ->where('entery_degree_completion_year',$request->entery_degree_completion_year)
       //                              ->count();
       //  $alumin_id = alumni_category_code_by_id($request->alumni_category).$request->batch."B".$request->entery_degree_completion_year."M".$member_number;
       //  MemberInfo::where('id',$member_id)->update(['member_id'=>$alumin_id]);

        return redirect()->back()->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MemberInfo  $memberInfo
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $MemberInfo = MemberInfo::find($id);
        $MemberInfo->delete();
        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
