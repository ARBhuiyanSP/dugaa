<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberRegistration extends Model
{
    use HasFactory;

     public function _gender(){
    	return $this->hasOne(Gender::class,'id','gender_id');
    }

    public function _member_ship_type(){
    	return $this->hasOne(MembershipType::class,'id','alumni_category');
    }

    
}
