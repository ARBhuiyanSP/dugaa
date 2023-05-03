@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
<div class="wrapper print_content">
  <style type="text/css">
  .table td, .table th {
    padding: 0.10rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
}
  </style>
<div class="_report_button_header">
    <a class="nav-link"  href="{{url('day-book')}}" role="button">
          <i class="fas fa-search"></i>
        </a>
 <a style="cursor: pointer;" class="nav-link"  title="Print" onclick="javascript:printDiv('printablediv')"><i class="fas fa-print"></i></a>
      <a style="cursor: pointer;" onclick="fnExcelReport();" class="nav-link"  title="Excel Download" ><i class="fa fa-file-excel" aria-hidden="true"></i></a>
  </div>

<section class="invoice" id="printablediv">
    
    
    
        <table class="table" style="border:none;width: 100%;">
          <tr>
            
            <td style="border:none;width: 100%;text-align: center;">
              <table class="table" style="border:none;">
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;font-size: 24px;"><b>{{$settings->name ?? '' }}</b></td> </tr>
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">{{$settings->_address ?? '' }}</td></tr>
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">{{$settings->_phone ?? '' }},{{$settings->_email ?? '' }}</td></tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><b>{{$page_name}} </b></td> </tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><strong>Date: {{ _view_date_formate($request->_datex ?? '') }} To {{ _view_date_formate($request->_datey ?? '') }} </strong></td> </tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">
                  <br />
                  <b>@foreach($permited_branch as $p_branch)
                      @if(isset($previous_filter["_branch_id"]))
                        @if(in_array($p_branch->id,$previous_filter["_branch_id"])) 
                       <span style="background: #f4f6f9;margin-right: 2px;padding: 5px;"><b>{{ $p_branch["_name"] }}</b></span>    
                        @endif
                      @endif
                      @endforeach </b></td> </tr>
              </table>
            </td>
           
          </tr>
        </table>
       

    <!-- Table row -->
     <table class="cewReportTable">
          <thead>
          <tr>
           <th style="border:1px solid silver;width: 10%;" class="text-left" >ID</th>
           <th style="border:1px solid silver;width: 20%;" class="text-left" >Group</th>
            <th style="border:1px solid silver;width: 20%;" class="text-left" >Ledger </th>
            <th style="border:1px solid silver;width: 20%;" class="text-left" >Narration</th>
            <th style="border:1px solid silver;width: 10%;" class="text-right" >Dr.Amount </th>
            <th style="border:1px solid silver;width: 10%;" class="text-right" >Cr.Amount </th>
          </tr>
          
          
          </thead>
          <tbody>
             @forelse($_result_group as $key=>$detail)
             <tr>
               <td colspan="6">{{$key}}</td>
             </tr>
             @php
              $_sub_total_dr_amount =0;
              $_sub_total_cr_amount =0;
             @endphp
             @forelse($detail as $key=> $value)
             @php
              $_sub_total_dr_amount +=$value->_dr_amount ?? 0;
              $_sub_total_cr_amount +=$value->_cr_amount ?? 0;
             @endphp
             <tr>
              
               <td>
                @if($key ==0)
                   
                @if($value->_table_name=="voucher_masters")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('voucher.show',$value->_id) }}">
                {{ voucher_prefix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="purchases")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('purchase/print',$value->_id) }}">
                  {{ _purchase_pfix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="purchase_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('purchase/print',$value->_id) }}">
                  {{ _purchase_pfix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="purchases_return")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('purchase-return/print',$value->_id) }}">
                  {{ _purchase_return_pfix() }} {!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="purchase_return_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('purchase-return/print',$value->_id) }}">
                  {{ _purchase_return_pfix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="sales")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('sales/print',$value->_id) }}">
                  {{ _sales_pfix() }} {!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="sales_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('sales/print',$value->_id) }}">
                  {{ _sales_pfix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="warranty_masters")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('warranty-manage/print',$value->_id) }}">
                  {{ warranty_prefix() }} {!! $value->_id ?? '' !!}</a> <br>
                    @endif

                    @if($value->_table_name=="warranty_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('warranty-manage/print',$value->_id) }}">
                   {{ warranty_prefix() }} {!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="resturant_sales")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('restaurant-sales/print',$value->_id) }}">
                  {{ resturant_prefix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="restaurant_sales_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('restaurant-sales/print',$value->_id) }}">
                  {{ resturant_prefix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="resturant_sales_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('restaurant-sales/print',$value->_id) }}">
                 {{ resturant_prefix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="sales_return")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('sales-return/print',$value->_id) }}">
                  {{ _sales_return_pfix() }} {!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="sales_return_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('sales-return/print',$value->_id) }}">
                  {{ _sales_return_pfix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="damage")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('damage/print',$value->_id) }}">
                  {{ _damage_pfix() }} {!! $value->_id ?? '' !!}</a>
                    @endif

                @if($value->_table_name=="transfer")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('transfer-production/print',$value->_id) }}">
                  {{ _transfer_prefix() }} {!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="production")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('transfer-production/print',$value->_id) }}">
                  {{ production_prefix() }} {!! $value->_id ?? '' !!}</a>
                    @endif

                    @if($value->_table_name=="replacement_masters")
                       <a style="text-decoration: none;" target="__blank" href="{{ url('item-replace/print',$value->_id) }}">
                       {{ _replace_prefix() }}{!! $value->_id ?? '' !!}</a>
                   @endif
                   @if($value->_table_name=="replacement_item_accounts")
                       <a style="text-decoration: none;" target="__blank" href="{{ url('item-replace/print',$value->_id) }}">
                        {{ _replace_prefix() }} {!! $value->_id ?? '' !!}</a>
                   @endif

                   @if($value->_table_name=="warranty_masters")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('warranty-manage/print',$value->_id) }}">
                  {{ warranty_prefix() }}{!! $value->_id ?? '' !!}</a>
                    @endif
                   @if($value->_table_name=="service_masters")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('third-party-service/print',$value->_id) }}">
                  {{ service_prefix() }}{!! $value->_id ?? '' !!}</a>
                    @endif



                    @endif
                    


               </td>
               
               <td>{{_group_name($value->_account_group)}}</td>
               <td>{{_ledger_name($value->_account_ledger)}}</td>
               <td>{{$value->_narration ?? 'N/A'}}</td>
               
               <td class="text-right">{{ _report_amount(  $value->_dr_amount ?? 0 ) }}</td>
               <td class="text-right">{{ _report_amount(  $value->_cr_amount ?? 0 ) }}</td>
             </tr>
             @empty
             @endforelse
             <tr>
               <td colspan="4"><b>Sub Total</b></td>
               <td class="text-right"><b>{{ _report_amount(  $_sub_total_dr_amount ?? 0 ) }}</b></td>
               <td class="text-right"><b>{{ _report_amount(  $_sub_total_cr_amount ?? 0 ) }}</b></td>


             </tr>

            @empty
            @endforelse
           
          
          </tbody>
          
        </table>

      

    
    <!-- /.row -->
  </section>

</div>
@endsection

@section('script')



@endsection
