<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//use DB;

class FrontendController extends Controller
{
    /* public function index(){
     	return redirect('login');
    } */

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

    public function scholarship()
        {
            return view('scholarship');
        }

    public function download()
        {
            return view('download');
        }

    public function contact()
        {
            return view('contact');
        }

    
}
