<?php


if (! function_exists('image_uploader')) {
       function image_uploader($folder,$query) // Taking input image as parameter
    {
        $image_name = date('mdYHis') . uniqid();
        $ext = strtolower($query->getClientOriginalExtension()); // You can use also getClientOriginalName()
        $image_full_name = $image_name.'.'.$ext;
        if($folder ==''){
          $folder='images';
        }
        $upload_path = $folder.'/';    //Creating Sub directory in Public folder to put image
        $image_url = $upload_path.$image_full_name;
        $success = $query->move($upload_path,$image_full_name);
 
        return $image_url; // Just return image
    }
}
if (! function_exists('cloumn_size')) {
    function cloumn_size()
    {
        return $cloumns =["col-md-3","col-md-4",'col-md-6','col-md-8','col-md-12'];                         
    }
}



if (! function_exists('selected_cloumn_size')) {
    function selected_cloumn_size($id)
    {
               foreach ( cloumn_size() as $key => $value) {
                  if($value==$id){
                  	return $value;
                  }               	
                }                  
    }
}




if (! function_exists('page_types')) {
    function page_types()
    {
        return $page_types =[1=>'Multiple Post',2=>'Single Page',3=>'Galary'];                         
    }
}


if (! function_exists('image_possition')) {
    function image_possition()
    {
        return $image_possition =[0=>'None',1=>'Top',2=>'Right',3=>'Left',4=>'Bottom'];                         
    }
}
if (! function_exists('alumni_category_code_by_id')) {
    function alumni_category_code_by_id($id)
    {
        $data =  \App\Models\MembershipType::find($id); 
        return $data->code ?? '';                        
    }
}


if (! function_exists('selected_im_poss')) {
    function selected_im_poss($id)
    {
        foreach ( image_possition() as $key => $value) {
                  if($key==$id){
                  	return $value;
                  }               	
                }                          
    }
}



if (! function_exists('selected_page_type')) {
    function selected_page_type($id)
    {
              foreach ( page_types() as $key => $value) {
                  if($key==$id){
                  	return $value;
                  }               	
                }                   
    }
}

if (! function_exists('status')) {
    function status()
    {
        return $page_types =[1=>'published',0=>'Unpublished'];                         
    }
}

if (! function_exists('selected_status')) {
    function selected_status($id)
    {
              foreach ( status() as $key => $value) {
                  if($key==$id){
                  	return $value;
                  }               	
                }                   
    }
}


if (! function_exists('hide_show')) {
    function hide_show()
    {
        return $page_types =[1=>'Show',0=>'Hide'];                         
    }
}

if (! function_exists('selected_hide_show')) {
    function selected_hide_show($id)
    {
              foreach ( hide_show() as $key => $value) {
                  if($key==$id){
                    return $value;
                  }                 
                }                   
    }
}




if (! function_exists('show_hide')) {
    function show_hide()
    {
        return $page_types =[1=>'Show',0=>'Hide'];                         
    }
}


if (! function_exists('selected_show_hide')) {
    function selected_show_hide($id)
    {
              foreach ( show_hide() as $key => $value) {
                  if($key==$id){
                  	return $value;
                  }               	
                }                   
    }
}