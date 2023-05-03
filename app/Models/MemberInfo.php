<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use OwenIt\Auditing\Auditable as AuditableTrait;

class MemberInfo extends Model implements Auditable
{
     use AuditableTrait;
    use HasFactory;
    protected $guarded = [];

    public function _gender(){
    	return $this->hasOne(Gender::class,'id','gender_id');
    }

    public function _member_ship_type(){
    	return $this->hasOne(MembershipType::class,'id','alumni_category');
    }

    public function _entry_degree(){
    	return $this->hasOne(Degree::class,'id','entery_degree');
    }

    public function _entery_degree_completion_year(){
        return $this->hasOne(ExamSession::class,'id','entery_degree_completion_year');
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

