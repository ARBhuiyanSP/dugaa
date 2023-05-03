<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MainAccount;
use Session;

class MainAccountsController extends Controller
{


      function __construct()
    {
         $this->middleware('permission:main-accounts-list|main-accounts-create|main-accounts-edit|main-accounts-delete', ['only' => ['index','store']]);
         $this->middleware('permission:main-accounts-create', ['only' => ['create','store']]);
         $this->middleware('permission:main-accounts-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:main-accounts-delete', ['only' => ['destroy']]);
         $this->page_name = "Main Accounts";
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index(Request $request)
    {
       if($request->has('limit')){
            $limit = $request->limit ??  default_pagination();
            session()->put('_at_limit', $request->limit);
        }else{
             $limit= Session::get('_at_limit') ??  default_pagination();
            
        }
       
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';

        $datas = MainAccount::where('_name','!=','');
        if($request->has('_code') && $request->_code !=''){
            $datas = $datas->where('_code','like',"%$request->_code%");
        }
        if($request->has('id') && $request->id !=""){
            $ids =  array_map('intval', explode(',', $request->id ));
            $datas = $datas->whereIn('id', $ids); 
        }
        if($request->has('_name') && $request->_name !=''){
            $datas = $datas->where('_name','like',"%$request->_name%");
        }
       

         $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
         $page_name = $this->page_name;
        if($request->has('print')){
            if($request->print =="single"){
                return view('backend.accounts-module.main-accounts.master_print',compact('datas','page_name','request','limit'));
            }
         }

        return view('backend.accounts-module.main-accounts.index',compact('datas','request','page_name','limit'));

    }



    public function reset(){
        Session::flash('_at_limit');
       return  \Redirect::to('main-accounts?limit='.default_pagination());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = $this->page_name;
        return view('backend.accounts-module.main-accounts.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new MainAccount();
        $data->_name       = $request->_name ?? '';
        $data->_code       = $request->_code ?? '';
        $data->_status     = $request->_status ?? '';
        $data->save();

        return redirect()->back()->with('success','Information Save successfully');



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MainAccount  $MainAccount
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $page_name = $this->page_name;
        $data = MainAccount::find($id);
        return view('backend.accounts-module.main-accounts.show',compact('data','page_name'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MainAccount  $MainAccount
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page_name = $this->page_name;
        $data = MainAccount::find($id);
        return view('backend.accounts-module.main-accounts.edit',compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MainAccount  $MainAccount
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $data = MainAccount::find($id);
        $data->_name       = $request->_name ?? '';
        $data->_code       = $request->_code ?? '';
        $data->_status     = $request->_status ?? 1;
        $data->save();

        return redirect('main-accounts')->with('success','Information Save successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MainAccount  $MainAccount
     * @return \Illuminate\Http\Response
     */
    public function destroy(MainAccount $MainAccount)
    {
        $__message ="You Can not delete this Information";
        $page_name ="Permission Denied";
        return view('backend.message.permission_message',compact('__message','page_name'));
    }
}
