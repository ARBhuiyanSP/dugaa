<?php

namespace App\Http\Controllers;

use App\Models\ExamSession;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

class ExamSessionController extends Controller
{
     function __construct()
    {
         $this->middleware('permission:exam-session-list', ['only' => ['index']]);
         $this->middleware('permission:exam-session-create', ['only' => ['create','store']]);
         $this->middleware('permission:exam-session-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:exam-session-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= ExamSession::orderBy('name','asc')->get();
        $page_name ="Exam Session";
        return view('backend.exam-session.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Exam Session";
        return view('backend.exam-session.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $data = new ExamSession();
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
     * @param  \App\Models\ExamSession  $ExamSession
     * @return \Illuminate\Http\Response
     */
    public function show(ExamSession $ExamSession)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ExamSession  $ExamSession
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = ExamSession::find($id);
        $page_name = "Exam Session";
        return view("backend.exam-session.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ExamSession  $ExamSession
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        

        $data = ExamSession::find($id);
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
     * @param  \App\Models\ExamSession  $ExamSession
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = ExamSession::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
