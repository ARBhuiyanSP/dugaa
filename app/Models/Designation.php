<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;

class Designation extends Model
{
    use HasFactory;
    
	public function rules(){
	    	return ['name' => ['required', Rule::unique('designations')->ignore($this->id)],];
		}
}
