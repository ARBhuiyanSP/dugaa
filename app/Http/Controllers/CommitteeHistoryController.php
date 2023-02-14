<?php

namespace App\Http\Controllers;

use App\Models\CommitteeHistory;
use App\Models\Designation;
use App\Models\MemberInfo;
use App\Models\Committee;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use Auth;


class CommitteeHistoryController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:committee-history-list', ['only' => ['index']]);
         $this->middleware('permission:committee-history-create', ['only' => ['create','store']]);
         $this->middleware('permission:committee-history-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:committee-history-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= CommitteeHistory::orderBy('name','asc')->get();
        $page_name ="Committee Duration";
        return view('backend.committee-history.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Committee Duration";
        $designations = Designation::orderBy('name','asc')->get();
        $members = MemberInfo::select('member_id','first_name','last_name','id')
                            ->orderBy('first_name','asc')
                            ->get();
        return view('backend.committee-history.create',compact('page_name','designations','members'));
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
        
        if($request->_is_current ==1){
            \DB::table('committee_histories')->update(['_is_current'=>0]);
        }

        $data = new CommitteeHistory();
        $data->name = $request->name ?? '';
        $data->period = $request->period ?? '';
        $data->status = $request->status ?? 1;
        $data->_is_current = $request->_is_current ?? 0;
        $data->start_date = $request->start_date ?? 0;
        $data->end_date = $request->end_date ?? 0;
        $data->is_display = $request->is_display ?? 0;
        $data->serial = $request->_main_serial ?? 0;


                   

        $validator = Validator::make($data->toArray(), $data->rules());
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data->save();

        $users = Auth::user();

        $committee_his_id = $data->id;

        $member_ids = $request->member_id ?? [];
        $detail_committe_ids = $request->detail_committe_id ?? [];
        $member_ids = $request->member_id ?? [];
        $designation_ids = $request->designation_id ?? [];
        $serials = $request->serial ?? [];
        $row_number = $request->row_number ?? 0;
        if(sizeof($member_ids) > 0){
            for ($i=0; $i <sizeof($detail_committe_ids) ; $i++) { 
                $id = $detail_committe_ids[$i] ?? 0;
                if($id ==0){
                    $Committee = new Committee();
                }else{
                    $Committee = Committee::find($id);
                }
                $Committee->member_id = $member_ids[$i] ?? 0;
                $Committee->designation_id = $designation_ids[$i] ?? 0;
                $Committee->serial = $serials[$i] ?? 0;
                $Committee->committee_his_id = $committee_his_id;
                $Committee->status = 1;
                $Committee->created_by = $users->id;
                $Committee->save();
                
            }
            
        }




         return redirect()->back()
                        ->with('success','Data insert successfully'); 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CommitteeHistory  $CommitteeHistory
     * @return \Illuminate\Http\Response
     */
    public function show(CommitteeHistory $CommitteeHistory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CommitteeHistory  $CommitteeHistory
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $data = CommitteeHistory::with(['committee_members'])->find($id);
        $page_name = "Committee Duration";
        $designations = Designation::orderBy('name','asc')->get();
        $members = MemberInfo::select('member_id','first_name','last_name','id')
                            ->orderBy('first_name','asc')
                            ->get();

        return view("backend.committee-history.edit",compact('data','page_name','designations','members'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CommitteeHistory  $CommitteeHistory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
       
        if($request->_is_current ==1){
            \DB::table('committee_histories')->update(['_is_current'=>0]);
        }


        $data = CommitteeHistory::find($id);
        $data->name = $request->name ?? '';
        $data->period = $request->period ?? '';
        $data->status = $request->status ?? 1;
        $data->_is_current = $request->_is_current ?? 0;
        $data->start_date = $request->start_date ?? 0;
        $data->end_date = $request->end_date ?? 0;
        $data->is_display = $request->is_display ?? 0;
        $data->serial = $request->_main_serial ?? 0;
        
        $validator = Validator::make($data->toArray(), $data->rules());
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data->save();



        $users = Auth::user();

        $committee_his_id = $data->id;
        Committee::where('committee_his_id',$committee_his_id)->update(['status'=>0]);


        $member_ids = $request->member_id ?? [];
        $detail_committe_ids = $request->detail_committe_id ?? [];
        $member_ids = $request->member_id ?? [];
        $designation_ids = $request->designation_id ?? [];
        $serials = $request->serial ?? [];
        $row_number = $request->row_number ?? 0;
        if(sizeof($member_ids) > 0){
            for ($i=0; $i <sizeof($detail_committe_ids) ; $i++) { 
                $id = $detail_committe_ids[$i] ?? 0;
                if($id ==0){
                    $Committee = new Committee();
                }else{
                    $Committee = Committee::find($id);
                }
                $Committee->member_id = $member_ids[$i] ?? 0;
                $Committee->designation_id = $designation_ids[$i] ?? 0;
                $Committee->serial = $serials[$i] ?? 0;
                $Committee->committee_his_id = $committee_his_id;
                $Committee->status = 1;
                $Committee->created_by = $users->id;
                $Committee->save();
                
            }
            
        }




        return redirect()->back()
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CommitteeHistory  $CommitteeHistory
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = CommitteeHistory::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
