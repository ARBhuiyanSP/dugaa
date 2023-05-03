<?php
use Carbon\Carbon;
use App\Models\Branch;
use App\Models\CostCenter;
use App\Models\AccountGroup;
use App\Models\AccountHead;
use App\Models\AccountLedger;
use App\Models\Accounts;
use App\Models\VoucherType;


if (!function_exists('sms_send')) {
    function sms_send($messages, $to){
        $sending_phone_numbers = array();
        $phone_numbers = "";
        if($to !=""){
            $phone_array=explode(",",$to);
            foreach ($phone_array as $_phone_num) {
                $newstring = "88".substr($_phone_num, -11);
                if(strlen($newstring)==13){
                    array_push($sending_phone_numbers, $newstring);
                } 
            }
        }
        if(sizeof($sending_phone_numbers) > 0){
           $phone_numbers = implode(",",$sending_phone_numbers);
        }

        if($phone_numbers !=""){
            $api_key ="F54d7hem0z1h8SrN9HAt4hvhJZzd0gB1vgUW935O"; 
            $url="https://api.sms.net.bd/sendsms?api_key=".$api_key."&msg=".$messages."&to=".$phone_numbers."";  
            $curl = curl_init();
            
            curl_setopt($curl, CURLOPT_URL, $url);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($curl, CURLOPT_CONNECTTIMEOUT , 30);
            curl_setopt($curl, CURLOPT_USERAGENT , "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)");
            curl_setopt($curl, CURLOPT_HEADER, 0);
            $result = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);

            if($err)
                return $err;
            else
                return $result;
        }else{
            return "no";
        }

        
    }
 }

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

if (! function_exists('_default_amount_dr_cr')) {
    function  _default_amount_dr_cr()
    {

        return 1; 
        
    }
}

if (! function_exists('_show_amount_dr_cr')) {
    function  _show_amount_dr_cr($amount)
    {
        $amount = (string) $amount;
        if($amount[0]==='-'){
            if(_default_amount_dr_cr()==1){
                $amount = substr($amount, 1);
                return $amount." Cr";
            }elseif(_default_amount_dr_cr()==2){
                 $amount = substr($amount, 1);
                 return "(".$amount.")";
            }else{
                return $amount;
            }
        }else{
           if(_default_amount_dr_cr()==1){
                return $amount." Dr";
            }elseif(_default_amount_dr_cr()==2){
                 return $amount;
            }else{
                return $amount;
            } 
        }
        
        
    }
}

if (! function_exists('_last_balance')) {
    function _last_balance($ledger)
    {
      return \DB::select(' select SUM(_dr_amount-_cr_amount) as _balance from accounts where _account_ledger="'.$ledger.'" ');
    }
}



if (! function_exists('default_des')) {
    function default_des()
    {
      return   2;
    }
}
if (! function_exists('_date_diff')) {
    function _date_diff($date1,$date2)
    {
        $date1 = date_create($date1);
        $date2 = date_create($date2);
        $diff1 = date_diff($date1,$date2);
        $daysdiff = $diff1->format("%R%a");
        return $daysdiff = abs($daysdiff)." Days";
    }
}


if (! function_exists('ledger_to_group_type')) {
    function ledger_to_group_type($ledger)
    {
      return AccountLedger::where('id',$ledger)->select('_account_group_id','_account_head_id')->first();
    }
}

if (! function_exists('_find_ledger')) {
    function _find_ledger($ledger)
    {
      $ledger_info =  AccountLedger::where('id',$ledger)->select('_name')->first();
      return $ledger_info->_name ?? '';
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

if (! function_exists('member_status')) {
    function member_status()
    {
        return $page_types =[0=>'Pending',1=>'Approved'];                         
    }
}

if (! function_exists('selected_member_status')) {
    function selected_member_status($id)
    {
        foreach (member_status() as $key => $value) {
                       if($key ==$id){
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
if (! function_exists('year_wise_batch')) {
    function year_wise_batch($id)
    {
              $data =  \DB::table('year_batches')->find($id);  
              return $data->code ?? 0;                 
    }
}

if (! function_exists('convertLocalToUTC')) {
    function convertLocalToUTC($time)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $time, 'Europe/Paris')->setTimezone('UTC');
    }
}

if (! function_exists('convertUTCToLocal')) {
    function convertUTCToLocal($time)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $time, 'UTC')->setTimezone('Europe/Paris');
    }
}

if (! function_exists('default_pagination')) {
    function default_pagination()
    {
        return 10;
    }
}

if (! function_exists('_php_round')) {
    function _php_round($_amount,$_param=1)
    {
        return round($_amount);
    }
}




if (! function_exists('filterableBranch')) {
    function filterableBranch($request_branchs,$permited_branch)
    {
        $_branch_ids = array();
         
         if(sizeof($request_branchs) > 0){
            foreach ($request_branchs as $value) {
                array_push($_branch_ids, (int) $value);
            }
        }else{
                foreach ($permited_branch as $branch) {
                    array_push($_branch_ids, $branch->id);
                }
            
        }
        return $_branch_ids;
    }
}



if (! function_exists('filterableCostCenter')) {
    function filterableCostCenter($request_cost_centers,$permited_costcenters)
    {
        
         $_cost_center_ids=array();
        if(sizeof($request_cost_centers) > 0){
            foreach ($request_cost_centers as $value) {
                array_push($_cost_center_ids, (int) $value);
            }
        }else{
            foreach ($permited_costcenters as $cost_center) {
                array_push($_cost_center_ids, $cost_center->id);
            }
            
        }
        return $_cost_center_ids;
    }
}



if (! function_exists('permited_branch')) {
    function permited_branch($branch_ids)
    {
        return Branch::whereIn('id',$branch_ids)->select('id','_name')->get();
    }
}


if (! function_exists('_branch_name')) {
    function _branch_name($branch_ids)
    {
        $branch= Branch::where('id',$branch_ids)->select('_name')->first();
        return $branch->_name ?? '';
    }
}



if (! function_exists('_cost_center_name')) {
    function _cost_center_name($id)
    {
        $data= CostCenter::where('id',$id)->select('_name')->first();
        return $data->_name ?? '';
    }
}


if (! function_exists('_ledger_name')) {
    function _ledger_name($id)
    {
        $data= AccountLedger::where('id',$id)->select('_name')->first();
        return $data->_name ?? '';
    }
}

if (! function_exists('_group_name')) {
    function _group_name($id)
    {
        $data= AccountGroup::where('id',$id)->select('_name')->first();
        return $data->_name ?? '';
    }
}






if (! function_exists('permited_costcenters')) {
    function permited_costcenters($ids)
    {
        return CostCenter::whereIn('id',$ids)->select('id','_name')->get();
    }
}


if (! function_exists('filter_page_numbers')) {
    function filter_page_numbers()
    {
        return  [5,10,20,30,40,50,100,200,300,400,500];
    }
}

if (! function_exists('common_status')) {
    function common_status()
    {
        return  ['1'=>'Active','0'=>'In Active'];
    }
}

if (! function_exists('yes_nos')) {
    function yes_nos()
    {
        return  [1=>'YES',0=>'NO'];
    }
}

if (! function_exists('asc_desc')) {
    function asc_desc()
    {
        return  ['DESC','ASC'];
    }
}

if (! function_exists('selected_status')) {
    function selected_status($value)
    {
        foreach(common_status() as $key=>$val){
            if($key == $value){
                return $val;
            }
        }
    }
}

if (! function_exists('selected_status')) {
    function selected_status($value)
    {
        foreach(common_status() as $key=>$val){
            if($key == $value){
                return $val;
            }
        }
    }
}


if (! function_exists('selected_yes_no')) {
    function selected_yes_no($value)
    {
        foreach(yes_nos() as $key=>$val){
            if($key == $value){
                return $val;
            }
        }
    }
}


if (! function_exists('default_date_formate')) {
    function default_date_formate($value='DD-MM-YYYY')
    {
        return $value;
    }
}

if (! function_exists('voucher_prefix')) {
    function voucher_prefix()
    {
        return "AC-";
    }
}

if (! function_exists('report_date_formate')) {
    function report_date_formate()
    {
        return 'd-m-Y';
    }
}

if (! function_exists('_view_date_formate')) {
    function _view_date_formate($_date)
    {
       return date('d-m-Y', strtotime($_date));
    }
}



if (! function_exists('voucher_code_to_name')) {
    function voucher_code_to_name($value)
    {
        $types = VoucherType::where('_code',$value)->select('_name')->first();
        return $types->_name ?? '';
    }
}


if (! function_exists('prefix_taka')) {
    function prefix_taka($value="Tk")
    {
        
        return $value;
    }
}



//Database insert formate Date

if (! function_exists('change_date_format')) {
    function change_date_format($_date)
    {
      return   date('Y-m-d', strtotime($_date));
    }
}



if (! function_exists('_report_amount')) {
    function _report_amount($_amount)
    {
      return   number_format((float) $_amount ?? 0, default_des(), '.', ',');
    }
}



if (! function_exists('_php_round')) {
    function _php_round($_amount,$_param=1)
    {
        return round($_amount);
    }
}









if (! function_exists('_l_balance_update')) {
    function _l_balance_update($ledger)
    {

       
        $balance=\DB::select("SELECT SUM(IFNULL(_dr_amount,0)-IFNULL(_cr_amount,0)) as _balance FROM `accounts` WHERE _account_ledger=$ledger  AND _status=1 ");

      
      return $balance[0]->_balance ?? 0;
    }
}


if (! function_exists('ledger_balance_update')) {
    function ledger_balance_update($ledger)
    {
        $balance=\DB::select("SELECT SUM(IFNULL(_dr_amount,0)-IFNULL(_cr_amount,0)) as _balance FROM `accounts` WHERE _account_ledger=$ledger AND _status=1 ");
        \DB::table('account_ledgers')->where('id',$ledger)->update(['_balance'=>$balance[0]->_balance,'_is_used'=>1]);
    }
}

if (! function_exists('account_data_save')) {
       function account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount,$_cr_amount,$_branch_id,$_cost_center,$_name,$_serial=0){
        $_account_head =  ledger_to_group_type($_account_ledger)->_account_head_id;
        $_account_group =  ledger_to_group_type($_account_ledger)->_account_group_id;
            $Accounts =  Accounts::where('_ref_master_id',$_ref_master_id)
                                    ->where('_ref_detail_id',$_ref_detail_id)
                                    ->where('_table_name',$_table_name)
                                    ->where('_account_ledger',$_account_ledger)
                                    ->where('_serial',$_serial)
                                    ->first();
            if(empty($Accounts)){
                $Accounts = new Accounts();
            }
            
            $Accounts->_ref_master_id = $_ref_master_id;
            $Accounts->_ref_detail_id = $_ref_detail_id;
            $Accounts->_short_narration = $_short_narration;
            $Accounts->_narration = $_narration;
            $Accounts->_reference = $_reference;
            $Accounts->_transaction = $_transaction;
            $Accounts->_date = $_date;
            $Accounts->_table_name = $_table_name;
            $Accounts->_account_head = $_account_head;
            $Accounts->_account_group = $_account_group;
            $Accounts->_account_ledger = $_account_ledger;
            $Accounts->_dr_amount = $_dr_amount;
            $Accounts->_cr_amount = $_cr_amount;
            $Accounts->_branch_id = $_branch_id;
            $Accounts->_cost_center = $_cost_center;
            $Accounts->_name =$_name;
            $Accounts->_status =1;
            $Accounts->_serial =$_serial;
            $Accounts->save(); 

            $id= $Accounts->id;

            ledger_balance_update($_account_ledger);

    }
}

if (! function_exists('nv_number_to_text')) {
    function  nv_number_to_text($amount)
    {

        $digit = new NumberFormatter("en", NumberFormatter::SPELLOUT);
        return prefix_taka().".  ".ucfirst($digit->format($amount ?? 0))." Only."; 
        
    }
}