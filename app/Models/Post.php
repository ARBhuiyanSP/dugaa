<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;


    public function parent_cat(){
    	return $this->hasOne(Menu::class,'id','menu_id');
    }

    public function _images(){
    	return $this->hasMany(ImageModel::class,'post_id','id')->where('status',1);
    }

    public function _user(){
    	return $this->hasOne(User::class,'id','created_by');
    }
}
