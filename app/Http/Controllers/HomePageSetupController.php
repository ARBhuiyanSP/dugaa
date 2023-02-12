<?php

namespace App\Http\Controllers;

use App\Models\HomePageSetup;
use App\Models\Menu;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomePageSetupController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:home-page-setup', ['only' => ['index','create','store','edit','update','destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $data = HomePageSetup::with(['menu'])->orderBy('serial','asc')->get();
        $page_name = "Home Page Setup";
        


        return view('backend.home-page-setup.index',compact('page_name','data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $menu_ids = $request->menu_id ?? [];
        $serials = $request->serial ?? [];
        $_limits = $request->_limit ?? [];
        $block_types = $request->block_type ?? [];
        $statuss = $request->status ?? [];
        $ids = $request->id ?? [];
        for ($i=0; $i <sizeof($ids) ; $i++) { 
            if($ids[$i] ==0 ){
                 $HomePageSetup = new HomePageSetup();
             }else{
                 $HomePageSetup = HomePageSetup::find($ids[$i]);
             }
            $HomePageSetup->menu_id = $menu_ids[$i] ?? 0;
            $HomePageSetup->serial = $serials[$i] ?? 1;
            $HomePageSetup->status =$statuss[$i] ?? 0;
            $HomePageSetup->_limit = $_limits[$i] ?? 5;
            $HomePageSetup->block_type = $block_types[$i] ?? 1;
            $HomePageSetup->save();
        }
       
        return redirect()->back()->with('success','Data insert successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\HomePageSetup  $homePageSetup
     * @return \Illuminate\Http\Response
     */
    public function show(HomePageSetup $homePageSetup)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\HomePageSetup  $homePageSetup
     * @return \Illuminate\Http\Response
     */
    public function edit(HomePageSetup $homePageSetup)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\HomePageSetup  $homePageSetup
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HomePageSetup $homePageSetup)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\HomePageSetup  $homePageSetup
     * @return \Illuminate\Http\Response
     */
    public function destroy(HomePageSetup $homePageSetup)
    {
        //
    }
}
