<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use App\Models\HomePageSetup;
use Illuminate\Http\Request;
use DB;
use Auth;
use Str;

class MenuController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:main-menu-list', ['only' => ['index']]);
         $this->middleware('permission:main-menu-create', ['only' => ['create','store']]);
         $this->middleware('permission:main-menu-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:main-menu-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=Menu::with(['parent_cat'])->orderBy('serial','asc')->get();
        $page_name="Menu Setup";
        return view('backend.main-menu.index',compact('data','page_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Menu::where("parent_id",0)->orderBy('serial','asc')->get();
        $page_name="New Menu Setup";
        return view('backend.main-menu.create',compact('categories','page_name'));
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
            'menu_name' => 'required',
            'parent_id' => 'required',
            'status' => 'required',
            'is_main_menu_show' => 'required',
            'page_type' => 'required',
            'is_footer_menu_show' => 'required',
        ]);
        $users = Auth::user();

        //return $request->all();

        $Menu = new Menu();
        $Menu->menu_name = $request->menu_name ?? '';
        $Menu->slug = Str::slug($request->menu_name ?? '');
        $Menu->parent_id = $request->parent_id ?? 0;
        $Menu->serial = $request->serial ?? 0;
        $Menu->status = $request->status ?? 0;
        $Menu->is_main_menu_show = $request->is_main_menu_show ?? 0;
        $Menu->is_footer_menu_show = $request->is_footer_menu_show ?? 0;
        $Menu->page_type = $request->page_type ?? 0;
        $Menu->created_by = $users->id;
        $Menu->save();

        $menu_id = $Menu->id;

        $HomePageSetup = new HomePageSetup();
        $HomePageSetup->menu_id = $menu_id;
        $HomePageSetup->serial = $request->serial ?? 1;
        $HomePageSetup->status = 0;
        $HomePageSetup->_limit = 5;
        $HomePageSetup->block_type = 1;
        $HomePageSetup->save();



        Menu::where('id',$request->parent_id)->update(['have_child'=>1]);

        return redirect()->route('main-menu.index')
                        ->with('success','Data insert successfully');    
              
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories=Menu::where("parent_id",0)->orderBy('serial','asc')->get();
        $page_name="New Menu Setup";
        $data = Menu::find($id);
        return view('backend.main-menu.edit',compact('categories','page_name','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'menu_name' => 'required',
            'parent_id' => 'required',
            'status' => 'required',
            'is_main_menu_show' => 'required',
            'page_type' => 'required',
            'is_footer_menu_show' => 'required',
        ]);
        $users = Auth::user();

        $Menu = Menu::find($id);
        $Menu->menu_name = $request->menu_name ?? '';
        $Menu->slug =  Str::slug($request->menu_name ?? '');
        $Menu->parent_id = $request->parent_id ?? 0;
        $Menu->serial = $request->serial ?? 0;
        $Menu->status = $request->status ?? 0;
        $Menu->is_main_menu_show = $request->is_main_menu_show ?? 0;
        $Menu->is_footer_menu_show = $request->is_footer_menu_show ?? 0;
        $Menu->page_type = $request->page_type ?? 0;
        $Menu->created_by = $users->id;
        $Menu->save();
        
        return redirect()->route('main-menu.index')
                        ->with('success','Data insert successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Menu = Menu::find($id);
        $Menu->delete();

        $HomePageSetup = HomePageSetup::where('menu_id',$id);
        $HomePageSetup->delete();


        return redirect()->back()->with('success', 'Delete Successfully');
    }
}
