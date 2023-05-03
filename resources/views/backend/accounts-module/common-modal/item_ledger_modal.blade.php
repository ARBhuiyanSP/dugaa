<!-- Modal -->

<div class="modal fade" id="exampleModalLong_item" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Create New Item (Inventory)</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="_item_modal_form">
          <div class="row">
                       <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <label>Category: <span class="_required">*</span></label>
                               <select  class="form-control _category_id select2" name="_category_id" required>
                                  <option value="">--Select Category--</option>
                                  @php
                                  $categories = $categories ?? [];
                                  @endphp
                                  @forelse($categories as $category )
                                  <option value="{{$category->id}}" >{{ $category->_parents->_name ?? '' }}/{{ $category->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                      
                       
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <label for="_item">Item:<span class="_required">*</span></label>
                                <input type="text" id="_item" name="_item" class="form-control _item_item" value="{{old('_item')}}" placeholder="Item" required>
                            </div>
                        </div>
                       
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_code">Code:</label>
                                <input type="text" id="_code" name="_code" class="form-control _item_code" value="{{old('_code')}}" placeholder="Code" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_unit">Unit:<span class="_required">*</span></label>
                                @php
                                  $units = $units ?? [];
                                  @endphp
                                <select class="form-control _unit_id _item_unit_id" id="_unit_id" name="_unit_id" required>
                                  <option value="" >--Units--</option>
                                  @foreach($units as $unit)
                                   <option value="{{$unit->id}}" >{{$unit->_name ?? ''}}</option>
                                  @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_barcode">Model:</label>
                                <input type="text" id="_barcode" name="_barcode" class="form-control _item_barcode" value="{{old('_barcode')}}" placeholder="Model" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_discount">Discount Rate:</label>
                                <input type="text" id="_discount" name="_discount" class="form-control _item_discount" value="{{old('_discount')}}" placeholder="Discount Rate" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_vat">Vat Rate:</label>
                                <input type="text" id="_vat" name="_vat" class="form-control _item_vat" value="{{old('_vat')}}" placeholder="Vat Rate" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_pur_rate">Purchase Rate:</label>
                                <input type="text" id="_pur_rate" name="_pur_rate" class="form-control _item_pur_rate" value="{{old('_pur_rate')}}" placeholder="Purchase Rate" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_sale_rate">Sales Rate:</label>
                                <input type="text" id="_sale_rate" name="_sale_rate" class="form-control _item_sale_rate" value="{{old('_sale_rate')}}" placeholder="Sales Rate" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_manufacture_company">Manufacture Company:</label>
                                <input type="text" id="_manufacture_company" name="_manufacture_company" class="form-control _item_manufacture_company" value="{{old('_manufacture_company')}}" placeholder="Manufacture Company" >
                            </div>
                        </div>
                        @can('restaurant-module') 
                         <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_kitchen_item" class="_required" title="if Yes then this item will send to kitchen to cook/production for sales and store deduct as per item ingredient wise automaticaly">Kitchen/Production Item ?:</label>
                                <select class="form-control" name="_kitchen_item" id="_kitchen_item">
                                  <option value="0">No</option>
                                  <option value="1">Yes</option>
                                </select>
                            </div>
                        </div>
                        @endcan
                         <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_unique_barcode">Use Unique Barcode ?:</label>
                                <select class="form-control _item_unique_barcode" name="_unique_barcode" id="_item_unique_barcode">
                                  <option value="0">NO</option>
                                  <option value="1">Yes</option>
                                </select>
                            </div>
                        </div>
                         <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <label for="_status">Status:</label>
                                <select class="form-control _item_status" name="_status" id="_status">
                                  <option value="1">Active</option>
                                  <option value="0">In Active</option>
                                </select>
                            </div>
                        </div>
                        
                    </div>
          </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary modal_close" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary save_item">Save </button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Create Ledger</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="_ledger_modal_form">
        <div class="row">
                                  @php
                                  $account_types = $account_types ?? [];
                                  @endphp
                       <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Account Type: <span class="_required">*</span></strong>
                               <select type_base_group="{{url('type_base_group')}}" class="form-control _account_head_id select2" name="_account_head_id" required>
                                  <option value="">--Select Account Type--</option>
                                  @forelse($account_types as $account_type )
                                  <option value="{{$account_type->id}}" @if(isset($request->_account_head_id)) @if($request->_account_head_id == $account_type->id) selected @endif   @endif>{{ $account_type->id ?? '' }}-{{ $account_type->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                       <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group ">
                                  @php
                                  $account_groups = $account_groups ?? [];
                                  @endphp
                                <strong>Account Group:<span class="_required">*</span></strong>
                               <select class="form-control _account_groups select2" name="_account_group_id" required>
                                  <option value="">--Select Account Group--</option>
                                  @forelse($account_groups as $account_group )
                                  <option value="{{$account_group->id}}" @if(isset($request->_account_group_id)) @if($request->_account_group_id == $account_group->id) selected @endif   @endif>{{ $account_group->id ?? '' }} - {{ $account_group->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group ">
                              @php
                                  $permited_branch = $permited_branch ?? [];
                                  @endphp
                                <strong>Branch:<span class="_required">*</span></strong>
                               <select class="form-control _ledger_branch_id" name="_ledger_branch_id" required >
                                  
                                  @forelse($permited_branch as $branch )
                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->id ?? '' }} - {{ $branch->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Ledger Name:<span class="_required">*</span></strong>
                                
                                <input type="text" name="_name" class="form-control _ledger_name" value="{{old('_name')}}" placeholder="Ledger Name" required>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Address:</strong>
                                <input type="text" name="_address" class="form-control _ledger_address" value="{{old('_address')}}" placeholder="Address" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Code:</strong>
                                <input type="text" name="_code" class="form-control _ledger_code" value="{{old('_code')}}" placeholder="CODE Number">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Display Possition:</strong>
                                {!! Form::text('_short', null, array('placeholder' => 'Possition','class' => 'form-control _ledger_short')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>NID Number:</strong>
                               <input type="text" name="_nid" class="form-control _ledger_nid" value="{{old('_nid')}}" placeholder="NID Number">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Email:</strong>
                                <input type="email" name="_email" class="form-control _ledger_email" value="{{old('_email')}}" placeholder="Email" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Phone:</strong>
                                <input type="text" name="_phone" class="form-control _ledger_phone" value="{{old('_phone')}}" placeholder="Phone" >
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Credit Limit:</strong>
                                <input type="number" step="any" name="_credit_limit" class="form-control _ledger_credit_limit" value="{{old('_credit_limit',0)}}" placeholder="Credit Limit" >
                            </div>
                        </div>
                       
                        <div class="col-xs-12 col-sm-12 col-md-6 display_none">
                            <div class="form-group">
                                <strong>Is User:</strong>
                                <select class="form-control _ledger_is_user" name="_is_user">
                                  @foreach(yes_nos() as $key=>$s_val)
                                  <option value="{{$key}}">{{$s_val}}</option>
                                  @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 display_none">
                            <div class="form-group">
                                <strong>Sales Form:</strong>
                                <select class="form-control _ledger_is_sales_form" name="_is_sales_form">
                                  @foreach(yes_nos() as $key=>$s_val)
                                  <option value="{{$key}}">{{$s_val}}</option>
                                  @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 display_none">
                            <div class="form-group">
                                <strong>Is Purchase Form:</strong>
                                <select class="form-control _ledger_is_purchase_form" name="_is_purchase_form">
                                  @foreach(yes_nos() as $key=>$s_val)
                                  <option value="{{$key}}">{{$s_val}}</option>
                                  @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 display_none">
                            <div class="form-group">
                                <strong>Search For All Branch:</strong>
                                <select class="form-control _ledger_is_all_branch" name="_is_all_branch">
                                  @foreach(yes_nos() as $key=>$s_val)
                                  <option value="{{$key}}">{{$s_val}}</option>
                                  @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group">
                                <strong>Status:</strong>
                                <select class="form-control _ledger_status" name="_status">
                                  @foreach(common_status() as $key=>$s_val)
                                  <option value="{{$key}}">{{$s_val}}</option>
                                  @endforeach
                                </select>
                            </div>
                        </div>
                       
                      
                      
                    </div>
              </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary modal_close" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary save_ledger">Save </button>
      </div>
    </div>
  </div>
</div>