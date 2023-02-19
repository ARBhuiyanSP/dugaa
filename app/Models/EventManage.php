<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;

class EventManage extends Model
{
    use HasFactory;
	public function rules(){
	    	return ['name' => ['required', Rule::unique('event_manages')->ignore($this->id)],];
	}
}
