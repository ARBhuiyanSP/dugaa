<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MemberRegistration;
use App\Models\ExamSession;
use App\Models\MembershipType;
use App\Models\PayingSystem;
use App\Models\Gender;
use App\Models\MemberInfo;
use App\Models\Degree;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Mail;
use App\Mail\MemberMail;

class MemberRegistrationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_name = "Online Member Application";
        $bsc_year_passing = \DB::table('year_batches')->orderBy('name','asc')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $paying_systems = PayingSystem::orderBy('name','ASC')->get();
        $data = MemberRegistration::where('status',0)->orderBy('id','DESC')->get();
        return view('backend.member-registration.index',compact('page_name','bsc_year_passing','examsessions','genders','membership_types','paying_systems','data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Online Member Application";
        $bsc_year_passing = \DB::table('year_batches')->orderBy('name','asc')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $paying_systems = PayingSystem::orderBy('name','ASC')->get();
        return view('backend.member-registration.create',compact('page_name','bsc_year_passing','examsessions','genders','membership_types','paying_systems'));
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
       // return $request->all();
        $this->validate($request, [
            'first_name' => 'required',
            'last_name' => 'required',
            'gender_id' => 'required',
            'alumni_category' => 'required',
            'contact_no' => 'required',
            'email' => 'required',
        ]);

        $data = new MemberRegistration();
        $data->first_name = $request->first_name ?? '';
        $data->last_name = $request->last_name ?? '';
        $data->gender_id = $request->gender_id ?? 1;
        $data->alumni_category = $request->alumni_category ?? 1;
        $data->contact_no = $request->contact_no ?? 1;
        $data->email = $request->email ?? '';

        $data->admission_session = $request->admission_session ?? '';
        $data->entery_degree = $request->entery_degree ?? '';
        $data->exit_degree = $request->exit_degree ?? '';
        $data->entery_degree_completion_year = $request->entery_degree_completion_year ?? '';
        $data->exit_year = $request->exit_year ?? '';
        $data->batch = $request->batch;


        $data->session_bs_bsc = $request->session_bs_bsc ?? '';
        $data->bs_bsc_certificate_year = $request->bs_bsc_certificate_year ?? '';
        $data->session_ms_msc = $request->session_ms_msc ?? '';
        $data->ms_msc_certificate_year = $request->ms_msc_certificate_year ?? '';
        $data->session_mphil = $request->session_mphil ?? '';
        $data->mphil_certificate_year = $request->mphil_certificate_year ?? '';
        $data->session_phd = $request->session_phd ?? '';
        $data->phd_certificate_year = $request->phd_certificate_year ?? '';
        $data->current_affiliation = $request->current_affiliation ?? '';
        $data->designation = $request->designation ?? '';
        $data->contact_no = $request->contact_no ?? '';
        $data->email = $request->email ?? '';
        $data->alumni_category = $request->alumni_category ?? '';
        $data->payment_amount = $request->payment_amount ?? '';
        $data->payment_method_id = $request->payment_method_id ?? '';
        $data->payment_details = $request->payment_details ?? '';
        $data->bank = $request->bank ?? '';
        $data->branch = $request->branch ?? '';
        $data->status = 0;
        if($request->hasFile('member_image')){ 
            $folder="member-images";
            $member_image = image_uploader($folder,$request->member_image);
            $data->member_image = $member_image; 
        }

        $data->save();

        return redirect()->back()->with('success','Information added successfully');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MemberRegistration  $memberRegistration
     * @return \Illuminate\Http\Response
     */
    public function show(MemberRegistration $memberRegistration)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MemberRegistration  $memberRegistration
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $page_name = "Online Member Application";
        $bsc_year_passing = \DB::table('year_batches')->orderBy('name','asc')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $paying_systems = PayingSystem::orderBy('name','ASC')->get();
        $data = MemberRegistration::with(['_member_ship_type'])->find($id);
        $degress = Degree::get();
        return view('backend.member-registration.edit',compact('page_name','bsc_year_passing','examsessions','genders','membership_types','paying_systems','data','degress'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MemberRegistration  $memberRegistration
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
         $this->validate($request, [
            'first_name' => 'required',
            'last_name' => 'required',
            'gender_id' => 'required',
            'alumni_category' => 'required',
            'contact_no' => 'required',
            'email' => 'required',
        ]);

        $data = MemberRegistration::find($id);
        $data->first_name = $request->first_name ?? '';
        $data->last_name = $request->last_name ?? '';
        $data->gender_id = $request->gender_id ?? 1;
        $data->admission_session = $request->admission_session ?? '';
        $data->entery_degree = $request->entery_degree ?? '';
        $data->exit_degree = $request->exit_degree ?? '';
        $data->entery_degree_completion_year = $request->entery_degree_completion_year ?? '';
        $data->exit_year = $request->exit_year ?? '';
        $data->batch = $request->batch;


        $data->alumni_category = $request->alumni_category ?? 1;
        $data->contact_no = $request->contact_no ?? 1;
        $data->email = $request->email ?? '';
        $data->session_bs_bsc = $request->session_bs_bsc ?? '';
        $data->bs_bsc_certificate_year = $request->bs_bsc_certificate_year ?? '';
        $data->session_ms_msc = $request->session_ms_msc ?? '';
        $data->ms_msc_certificate_year = $request->ms_msc_certificate_year ?? '';
        $data->session_mphil = $request->session_mphil ?? '';
        $data->mphil_certificate_year = $request->mphil_certificate_year ?? '';
        $data->session_phd = $request->session_phd ?? '';
        $data->phd_certificate_year = $request->phd_certificate_year ?? '';
        $data->current_affiliation = $request->current_affiliation ?? '';
        $data->designation = $request->designation ?? '';
        $data->contact_no = $request->contact_no ?? '';
        $data->email = $request->email ?? '';
        $data->payment_amount = $request->payment_amount ?? '';
        $data->payment_method_id = $request->payment_method_id ?? '';
        $data->payment_details = $request->payment_details ?? '';
        $data->bank = $request->bank ?? '';
        $data->branch = $request->branch ?? '';
        $data->status = $request->status ?? 0;
        $member_image = '';
        if($request->hasFile('member_image')){ 
            $folder="member-images";
            $member_image = image_uploader($folder,$request->member_image);
            $data->member_image = $member_image; 
        }

        $data->save();

        if($request->status ==1){


         $MemberInfo = new MemberInfo();
         $batch = year_wise_batch($request->bs_bsc_certificate_year ?? 0);
         $alumni_category = $request->alumni_category;
         $bs_bsc_certificate_year = $request->bs_bsc_certificate_year;

         //Check old catetory to new category,old batch to new batch, old entery_degree_completion_year to new entery_degree_completion_year

        
            $member_inforamation = MemberInfo::where('alumni_category',$alumni_category)
                                    ->where('batch',$batch)
                                    ->where('entery_degree_completion_year',$bs_bsc_certificate_year)
                                    ->orderBy('unique_count_id','DESC')
                                    ->limit(1)
                                    ->first();

        $member_number = (($member_inforamation->unique_count_id ?? 0)+1);

        $alumin_id = alumni_category_code_by_id($alumni_category).$batch."B".$bs_bsc_certificate_year."M".$member_number;

        MemberInfo::where('id',$id)->update(['member_id'=>$alumin_id,'unique_count_id'=>$member_number]);
        $member_id = $alumin_id;

         


        $MemberInfo->first_name= $request->first_name ?? '';
        $MemberInfo->member_id= $member_id ?? '';
        $MemberInfo->last_name= $request->last_name ?? '';
        $MemberInfo->user_name= $email ?? '';

        $MemberInfo->alumni_category= $request->alumni_category ?? '';
         $MemberInfo->current_affiliation= $request->current_affiliation ?? '';
        $MemberInfo->designation= $request->designation ?? '';
        $MemberInfo->current_address= $request->current_address ?? '';
        $MemberInfo->parmanent_address= $request->parmanent_address ?? '';
        $MemberInfo->contact_no= $request->contact_no ?? '';
        $MemberInfo->email= $request->email ?? '';
        $MemberInfo->note= $request->note ?? '';
        $MemberInfo->entry_by= \Auth::user()->id;

        $MemberInfo->batch= $batch ?? '';
        $MemberInfo->entery_degree= $request->entery_degree ?? '';
        $MemberInfo->admission_session= $request->admission_session ?? '';
        $MemberInfo->exit_degree= $request->exit_degree ?? '';
        $MemberInfo->entery_degree_completion_year= $request->entery_degree_completion_year ?? '';
        $MemberInfo->exit_year= $request->exit_year ?? '';

       
        if($request->hasFile('member_image')){ 
            $member_image = $this->UserImageUpload($request->member_image);
            $MemberInfo->member_image = $member_image; 
        }else{
          if($request->member_image_name !=''){
            $MemberInfo->member_image = $request->member_image_name; 
          }
        }

        if($request->hasFile('scanced_form')){ 
            $scanced_form = $this->UserImageUpload($request->scanced_form);
            $MemberInfo->scanced_form = $scanced_form; 
        }
        $MemberInfo->save();
        $member_id = $MemberInfo->id;

        $user = User::where('email',$request->email)->first();
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
        $user->email = $request->email ?? '';
       
        $user->user_type = 'user';
        $user->member_id = $member_id;
        $user->status = 1;
        $user->save();

        $user->assignRole('user');

             
              //return $request->_new_quotation_email;
        $email= $request->email;
        if($request->change_pssword_send_mail ==1){
          $data = [
              "subject"=>"Your Dugaa Account user name and password",
              "user_name"=>$name,
              "email"=>$request->email,
              "_password"=>$password_text,
              "_side_url"=>url('login'),
              "_site_name"=>"DUGAA",
              ];
               Mail::to($email)->send(new MemberMail($data));
           }

      }

        return redirect()->back()->with('success','Information added successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MemberRegistration  $memberRegistration
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $data = MemberRegistration::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
