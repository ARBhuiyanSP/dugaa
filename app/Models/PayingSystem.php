<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;

class PayingSystem extends Model
{
    use HasFactory;
    public function rules(){
	    	return ['name' => ['required', Rule::unique('paying_systems')->ignore($this->id)],];
		}
	
}
