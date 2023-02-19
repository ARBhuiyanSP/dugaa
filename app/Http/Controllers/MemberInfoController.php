<?php

namespace App\Http\Controllers;

use App\Models\MemberInfo;
use App\Models\Country;
use App\Models\Gender;
use App\Models\YearBatch;
use App\Models\ExamSession;
use App\Models\Degree;
use App\Models\MembershipType;
use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Mail;
use App\Mail\MemberMail;




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
            'user_name' => 'required',
            'alumni_category' => 'required',
            'entery_degree_completion_year' => 'required',
        ]);
        $MemberInfo = new MemberInfo();
        $MemberInfo->first_name= $request->first_name ?? '';
        $MemberInfo->last_name= $request->last_name ?? '';
        $MemberInfo->user_name= $request->user_name ?? '';
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
        $MemberInfo->gender_id= $request->gender_id ?? '';
        $MemberInfo->bsc_year_passing= $request->bsc_year_passing ?? '';
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


        $member_inforamation = MemberInfo::where('alumni_category',$request->alumni_category)
                                    ->where('batch',$request->batch)
                                    ->where('entery_degree_completion_year',$request->entery_degree_completion_year)
                                    ->orderBy('unique_count_id','DESC')
                                    ->limit(1)
                                    ->first();

        $member_number = (($member_inforamation->unique_count_id ?? 0)+1);

        $alumin_id = alumni_category_code_by_id($request->alumni_category).$request->batch."B".$request->entery_degree_completion_year."M".$member_number;
        MemberInfo::where('id',$member_id)->update(['member_id'=>$alumin_id,'unique_count_id'=>$member_number]);


        $user = User::where('email',$request->user_name)->first();
        if(!$user){
            $user = new User();
        }else{
            $password_text = mt_rand(10000000,99999999);
            $user->password = Hash::make($password_text);
        }
        $name = $request->first_name ?? ''." ".$request->last_name ?? '';
        $user->name = $name;
        $user->first_name = $request->first_name ?? '';
        $user->last_name = $request->last_name ?? '';
        $user->phone_number = $request->contact_no ?? '';
        $user->email = $request->user_name ?? '';
       
        $user->user_type = 'user';
        $user->member_id = $member_id;
        $user->status = 1;
        $user->save();

        $user->assignRole('user');

             $data = [
              "subject"=>"Your Dugaa Account user name and password",
              "user_name"=>$name,
              "email"=>$request->email,
              "_password"=>$password_text,
              "_side_url"=>url('login'),
              "_site_name"=>"DUGAA",
              ];
              //return $request->_new_quotation_email;
        $email= $request->email;
       Mail::to($email)->send(new MemberMail($data));



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


    public function ownProfile()
    {
        $page_name = "Member Information";
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $countries = Country::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $yearbatches = YearBatch::orderBy('name','ASC')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $degress = Degree::orderBy('name','ASC')->get();
        $user_id = \Auth::user()->id;

         $member_user = \App\Models\User::with(['member_info'])->find($user_id);
          $data = $member_user->member_info ?? '';
        if($data ==''){
            return redirect()->back()->with('message','Member Information not found');
        }
        return view('backend.member-info.own_profile',compact('membership_types','page_name','countries','genders','yearbatches','examsessions','degress','member_user','data'));
       
    }

    public function ownProfileUpdate(Request $request){

        $this->validate($request, [
            'first_name' => 'required',
            'batch' => 'required',
            'alumni_category' => 'required',
            'user_name' => 'required',
            'entery_degree_completion_year' => 'required',
        ]);
        $id = \Auth::user()->member_id ?? '';
        $MemberInfo = MemberInfo::find($id);
        if($MemberInfo){
            return redirect()->back()->with('message','Member Information not found');
        }
         $old_member_info = $MemberInfo;

         //Check old catetory to new category,old batch to new batch, old entery_degree_completion_year to new entery_degree_completion_year

         if( $old_member_info->batch !=$request->batch || $old_member_info->alumni_category !=$request->alumni_category || $old_member_info->entery_degree_completion_year !=$request->entery_degree_completion_year ){
            $member_inforamation = MemberInfo::where('alumni_category',$request->alumni_category)
                                    ->where('batch',$request->batch)
                                    ->where('entery_degree_completion_year',$request->entery_degree_completion_year)
                                    ->orderBy('unique_count_id','DESC')
                                    ->limit(1)
                                    ->first();

        $member_number = (($member_inforamation->unique_count_id ?? 0)+1);

        $alumin_id = alumni_category_code_by_id($request->alumni_category).$request->batch."B".$request->entery_degree_completion_year."M".$member_number;

        MemberInfo::where('id',$id)->update(['member_id'=>$alumin_id,'unique_count_id'=>$member_number]);
        $member_id = $alumin_id;

         }else{
            $member_id = $request->member_id;
         }


        $MemberInfo->first_name= $request->first_name ?? '';
        $MemberInfo->member_id= $member_id ?? '';
        $MemberInfo->last_name= $request->last_name ?? '';
        $MemberInfo->user_name= $request->user_name ?? '';
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

         $user = User::where('email',$request->user_name)->first();
        if(!$user){
            $user = new User();
            if($request->has('password') && $request->password !=''){
                $password_text = $request->password ?? '';
                $user->password = Hash::make($password_text);
            }
            
        }
        if($request->has('password') && $request->password !=''){
            $password_text = $request->password ?? '';
            $user->password = Hash::make($password_text);
        }
        $name = $request->first_name ?? ''." ".$request->last_name ?? '';
        $user->name = $name;
        $user->first_name = $request->first_name ?? '';
        $user->last_name = $request->last_name ?? '';
        $user->phone_number = $request->contact_no ?? '';
        $user->email = $request->user_name ?? '';
       
        $user->user_type = 'user';
        $user->member_id = $member_id;
        $user->status = 1;
        $user->save();

        $user->assignRole('user');

        //return $password_text;

             
              //return $request->_new_quotation_email;
        $email= $request->user_name;
        if($request->change_pssword_send_mail ==1){
            $data = [
              "subject"=>"Your Dugaa Account user name and password",
              "user_name"=>$name,
              "email"=>$request->user_name,
              "_password"=>$password_text,
              "_side_url"=>url('login'),
              "_site_name"=>"DUGAA",
              ];
               Mail::to($email)->send(new MemberMail($data));
           }

        return redirect()->back()->with('success','Data insert successfully');

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

        //return $request->all();
        $this->validate($request, [
            'first_name' => 'required',
            'batch' => 'required',
            'alumni_category' => 'required',
            'user_name' => 'required',
            'entery_degree_completion_year' => 'required',
        ]);
        $MemberInfo = MemberInfo::find($id);
         $old_member_info = $MemberInfo;

         //Check old catetory to new category,old batch to new batch, old entery_degree_completion_year to new entery_degree_completion_year

         if( $old_member_info->batch !=$request->batch || $old_member_info->alumni_category !=$request->alumni_category || $old_member_info->entery_degree_completion_year !=$request->entery_degree_completion_year ){
            $member_inforamation = MemberInfo::where('alumni_category',$request->alumni_category)
                                    ->where('batch',$request->batch)
                                    ->where('entery_degree_completion_year',$request->entery_degree_completion_year)
                                    ->orderBy('unique_count_id','DESC')
                                    ->limit(1)
                                    ->first();

        $member_number = (($member_inforamation->unique_count_id ?? 0)+1);

        $alumin_id = alumni_category_code_by_id($request->alumni_category).$request->batch."B".$request->entery_degree_completion_year."M".$member_number;

        MemberInfo::where('id',$id)->update(['member_id'=>$alumin_id,'unique_count_id'=>$member_number]);
        $member_id = $alumin_id;

         }else{
            $member_id = $request->member_id;
         }


        $MemberInfo->first_name= $request->first_name ?? '';
        $MemberInfo->member_id= $member_id ?? '';
        $MemberInfo->last_name= $request->last_name ?? '';
        $MemberInfo->user_name= $request->user_name ?? '';
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

        $user = User::where('email',$request->user_name)->first();
        if(!$user){
            $user = new User();
            $password_text = mt_rand(10000000,99999999);
            $user->password = Hash::make($password_text);
        }
        if($request->change_pssword_send_mail ==1){
                $password_text = mt_rand(10000000,99999999);
                $user->password = Hash::make($password_text);
        }
        $name = $request->first_name ?? ''." ".$request->last_name ?? '';
        $user->name = $name;
        $user->first_name = $request->first_name ?? '';
        $user->last_name = $request->last_name ?? '';
        $user->phone_number = $request->contact_no ?? '';
        $user->email = $request->user_name ?? '';
       
        $user->user_type = 'user';
        $user->member_id = $member_id;
        $user->status = 1;
        $user->save();

        $user->assignRole('user');

             $data = [
              "subject"=>"Your Dugaa Account user name and password",
              "user_name"=>$name,
              "email"=>$request->user_name,
              "_password"=>$password_text,
              "_side_url"=>url('login'),
              "_site_name"=>"DUGAA",
              ];
              //return $request->_new_quotation_email;
        $email= $request->user_name;
        if($request->change_pssword_send_mail ==1){
               Mail::to($email)->send(new MemberMail($data));
           }

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
