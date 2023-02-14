<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;

class ExamSession extends Model
{
    use HasFactory;

	public function rules(){
	    	return ['name' => ['required', Rule::unique('exam_sessions')->ignore($this->id)],];
		}
	
}
