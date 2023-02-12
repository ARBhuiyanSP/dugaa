<?php

namespace App\Http\Controllers;

use App\Models\YearBatch;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class YearBatchController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:year-batch-list', ['only' => ['index']]);
         $this->middleware('permission:year-batch-create', ['only' => ['create','store']]);
         $this->middleware('permission:year-batch-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:year-batch-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= YearBatch::orderBy('name','asc')->get();
        $page_name ="Year Batch";
        return view('backend.year-batch.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = "Year Batch";
        return view('backend.year-batch.create',compact('page_name'));
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
        $data = new YearBatch();
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
         return redirect()->back()
                        ->with('success','Data insert successfully'); 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\YearBatch  $YearBatch
     * @return \Illuminate\Http\Response
     */
    public function show(YearBatch $YearBatch)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\YearBatch  $YearBatch
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = YearBatch::find($id);
        $page_name = "Year Batch";
        return view("backend.year-batch.edit",compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\YearBatch  $YearBatch
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);

        $data = YearBatch::find($id);
        $data->name = $request->name ?? '';
        $data->code = $request->code ?? '';
        $data->save();
        return redirect()->back()
                        ->with('success','Data insert successfully'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\YearBatch  $YearBatch
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = YearBatch::find($id);
        $data->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
