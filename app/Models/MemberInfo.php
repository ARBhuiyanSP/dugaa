<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberInfo extends Model
{
    use HasFactory;

    public function _gender(){
    	return $this->hasOne(Gender::class,'id','gender_id');
    }

    public function _member_ship_type(){
    	return $this->hasOne(MembershipType::class,'id','alumni_category');
    }

    public function _entry_degree(){
    	return $this->hasOne(Degree::class,'id','entery_degree');
    }
    public function _exit_degree(){
    	return $this->hasOne(Degree::class,'id','exit_degree');
    }

    public function _alumni_cat(){
        return $this->hasOne(MembershipType::class,'id','alumni_category');
    }

    public function user_info(){
        return $this->hasOne(User::class,'member_id','id');
    }

   
}
