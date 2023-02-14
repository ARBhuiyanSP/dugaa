<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Committee extends Model
{
    use HasFactory;

    public function _member(){
    	return $this->hasOne(MemberInfo::class,'id','member_id');
    }

    public function _designation(){
    	return $this->hasOne(Designation::class,'id','designation_id');
    }
}
