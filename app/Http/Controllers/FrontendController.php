<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Menu;
use App\Models\CommitteeHistory;
use App\Models\DocumentDownload;
use App\Models\ExamSession;
use App\Models\Gender;
use App\Models\MembershipType;
use App\Models\PayingSystem;
use App\Models\ImageModel;
use App\Models\MemberRegistration;
use App\Models\Degree;

//use DB;

class FrontendController extends Controller
{
    /* public function index(){
     	return redirect('login');
    } */

    public function newMember(){
        $page_name = "Member Resistration";
        $bsc_year_passing = \DB::table('year_batches')->orderBy('name','asc')->get();
        $examsessions = ExamSession::orderBy('name','ASC')->get();
        $genders = Gender::orderBy('name','ASC')->get();
        $membership_types = MembershipType::orderBy('name','ASC')->get();
        $paying_systems = PayingSystem::orderBy('name','ASC')->get();
        $degress = Degree::get();
        return view('fontend.member_resistration',compact('page_name','bsc_year_passing','examsessions','genders','membership_types','paying_systems','degress'));
    }

    public function newMemberSave(Request $request)
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






        $batch = year_wise_batch($request->bs_bsc_certificate_year);
        $data = new MemberRegistration();
        $data->first_name = $request->first_name ?? '';
        $data->last_name = $request->last_name ?? '';

        $data->admission_session = $request->admission_session ?? '';
        $data->entery_degree = $request->entery_degree ?? '';
        $data->exit_degree = $request->exit_degree ?? '';
        $data->entery_degree_completion_year = $request->entery_degree_completion_year ?? '';
        $data->exit_year = $request->exit_year ?? '';
        $data->batch = $batch;



        $data->gender_id = $request->gender_id ?? 1;
        $data->parmanent_address = $request->parmanent_address ?? '';
        $data->current_address = $request->current_address ?? '';
        
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

    public function index()
        {
            return view('welcome');
        }

    public function sample()
        {
            return view('sample');
        }

    public function journey()
        {
            return view('journey-of-dugaa');
        }

    public function responsibility()
        {
            return view('social-responsibility');
        }

    public function news()
        {
            return view('news');
        }

    public function notice()
        {
            return view('notices');
        }

    public function pageCommittee($id)
        {
             $data = CommitteeHistory::with(['committee_members'])->where('id',$id)->first();
            $page_name = $data->name ?? '';
            return view('pages.committee',compact('page_name','data'));
        }

    public function download()
        {
            $page_name="Download";
            $documents = DocumentDownload::where('status',1)->orderBy('serial','asc')->get();
            return view('download',compact('page_name','documents'));
        }

    public function contact()
        {
            $page_name ="Contact Us";
            return view('contact',compact('page_name'));
        }


    public function customPage($slug=''){
        $slug_detail= Menu::with(['parent_cat'])->where('slug',$slug)->first();
        if($slug_detail){
           
             $data=Post::with(['parent_cat','_images','_user'])
                        ->where('menu_id',$slug_detail->id)
                        ->orderBy('position','asc')
                        ->paginate(10);
            $page_name=$slug_detail->menu_name;
            $page_type = $slug_detail->page_type ?? 1;
            if($page_type==2){

                 return view('pages.page',compact('slug_detail','page_name','data'));
            }elseif ($page_type==3){
                // Photo Gallary
                 return view('pages.gallary',compact('slug_detail','page_name','data'));
            }
           // return $data;
            return view('pages.post',compact('data','page_name','slug_detail'));

        }else{
            return view('404');
        }
        
    }



    public function postDetail($slug=''){
        
           
             $data=Post::with(['parent_cat','_images','_user'])
                        ->where('post_slug',$slug)
                        ->first();
        if($data){
            $page_name=$data->parent_cat->menu_name ?? '';
            $page_type = $slug_detail->page_type ?? 1;
            
            return view('post.detail',compact('data','page_name'));

        }else{
            return view('404');
        }
        
    }

    

    
}
