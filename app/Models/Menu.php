<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    public function parent_cat(){
    	return $this->hasOne(Menu::class,'id','parent_id');
    }

    public function child_cat(){
    	return $this->hasMany(Menu::class,'parent_id','id');
    }
}
