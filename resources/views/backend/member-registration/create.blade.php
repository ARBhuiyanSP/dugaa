@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')

<div class="container-fluid ">
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{!! $page_name ?? '' !!}</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               @can('member-registration-create')
                        <a class="btn btn-sm btn-success" href="{{ url('member-registration') }}">  {!! $page_name ?? '' !!}</a>
                @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
<section class="blog-section "> <!-- Slider Start -->
    <div class="row">
        <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
           
            <div class=" p-2">
              <div class="card p-2">
                <div class="message-area">
                 @include('backend.common.message')
                </div>
               <form action="{{url('new-member-save')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">
                  <div class="col-sm-6 col-md-4 col-xs-6">
                      <div class="form-group">
                          <label for="first_name" class="font-weight-bold">First Name<span class="_requried">*</span></label>
                          <input type="text" name="first_name" class="form-control " id="first_name"  placeholder="Enter first name" value="{{old('first_name')}}" required>
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-4 col-xs-6">
                      <div class="form-group">
                          <label for="last_name" class="font-weight-bold">Last Name<span class="_requried">*</span></label>
                          <input type="text" name="last_name" class="form-control " id="last_name"  placeholder="Enter first name" value="{{old('last_name')}}" required>
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-4 col-xs-6">
                      <div class="form-group">
                          <label for="last_name" class="font-weight-bold">Gender<span class="_requried">*</span></label>
                           <select name="gender_id" class="form-control " required="true">
                                  <option value="" >Select Gender</option>
                                  @forelse($genders as $key=>$val)
                                    <option value="{{$val->id}}"
                                      @if(old('gender_id')==$val->id) selected @endif 
                                      >{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                        </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="session_bs_bsc" class="font-weight-bold">BS/BSc <small>(Admission session in Geology, DU)</small></label>
                          <select name="session_bs_bsc" class="form-control" >
                            <option value="">--Select--</option>
                            @forelse($examsessions as $key=>$val)
                              <option value="{{ $val->id }}"
                                 @if(old('session_bs_bsc')==$val->id) selected @endif 
                                >{{ $val->name ?? '' }}</option>
                            @empty
                            @endforelse
                          </select>
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="bs_bsc_certificate_year" class="font-weight-bold">BS/BSc<small> (Year of degree as in certificate)</small></label>
                          <select class="form-control bsc_year_passing" name="bs_bsc_certificate_year" id="bs_bsc_certificate_year" >
                                @forelse($bsc_year_passing as $key=>$val)
                                 <option value="{{ $val->id ?? '' }}"
                                  @if(old('bsc_year_passing')==$val->id) selected @endif 
                                  data-batch="{{ $val->code ?? '' }}">{{ $val->name ?? '' }} - {{ $val->code ?? '' }}</option>
                                 @empty
                                 @endforelse
                               </select>
                        </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="session_ms_msc" class="font-weight-bold">MS/MSc <small>(Admission session in Geology, DU)</small></label>
                          <select name="session_ms_msc" class="form-control" id="session_ms_msc" >
                            <option value="">--Select--</option>
                            @forelse($examsessions as $key=>$val)
                              <option value="{{ $val->id }}"
                                @if(old('session_ms_msc')==$val->id) selected @endif 
                                >{{ $val->name ?? '' }}</option>
                            @empty
                            @endforelse
                          </select>
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="ms_msc_certificate_year" class="font-weight-bold">MS/MSc<small> (Year of degree as in certificate)</small></label>
                          <select class="form-control bsc_year_passing" name="ms_msc_certificate_year" id="ms_msc_certificate_year" >
                                @forelse($bsc_year_passing as $key=>$val)
                                 <option value="{{ $val->id ?? '' }}"
                                  @if(old('bsc_year_passing')==$val->id) selected @endif 
                                  data-batch="{{ $val->code ?? '' }}">{{ $val->name ?? '' }} </option>
                                 @empty
                                 @endforelse
                               </select>
                        </div>
                  </div>
                </div>
                 
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="session_mphil" class="font-weight-bold">MPhil <small>(Admission session in Geology, DU)</small></label>
                          <select name="session_mphil" class="form-control" id="session_mphil" >
                            <option value="">--Select--</option>
                            @forelse($examsessions as $key=>$val)
                              <option value="{{ $val->id }}"
                                 @if(old('session_mphil')==$val->id) selected @endif 
                                >{{ $val->name ?? '' }}</option>
                            @empty
                            @endforelse
                          </select>
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="mphil_certificate_year" class="font-weight-bold">MPhil<small> (Year of degree as in certificate)</small></label>
                          <select class="form-control bsc_year_passing" name="mphil_certificate_year" id="mphil_certificate_year" >
                                @forelse($bsc_year_passing as $key=>$val)
                                 <option value="{{ $val->id ?? '' }}"
                                  @if(old('mphil_certificate_year')==$val->id) selected @endif 
                                  data-batch="{{ $val->code ?? '' }}">{{ $val->name ?? '' }} </option>
                                 @empty
                                 @endforelse
                               </select>
                        </div>
                  </div>
                </div><!-- End of Row -->
                 
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="session_phd" class="font-weight-bold">PhD <small>(Admission session in Geology, DU)</small></label>
                          <select name="session_phd" class="form-control" id="session_phd" >
                            <option value="">--Select--</option>
                            @forelse($examsessions as $key=>$val)
                              <option value="{{ $val->id }}"  @if(old('session_phd')==$val->id) selected @endif >{{ $val->name ?? '' }}</option>
                            @empty
                            @endforelse
                          </select>
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="phd_certificate_year" class="font-weight-bold">PhD<small> (Year of degree as in certificate)</small></label>
                          <select class="form-control bsc_year_passing" name="phd_certificate_year" id="phd_certificate_year" >
                                @forelse($bsc_year_passing as $key=>$val)
                                 <option value="{{ $val->id ?? '' }}" @if(old('phd_certificate_year')==$val->id) selected @endif data-batch="{{ $val->code ?? '' }}">{{ $val->name ?? '' }} </option>
                                 @empty
                                 @endforelse
                               </select>
                        </div>
                  </div>
                </div><!-- End of Row -->
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="current_affiliation" class="font-weight-bold">Current Affiliation </label>
                          <input type="text" class="form-control " name="current_affiliation" id="current_affiliation"  placeholder="Current Affiliation" value="{{old('current_affiliation')}}">
                          
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="designation" class="font-weight-bold">Designation </label>
                          <input type="text" class="form-control " name="designation" id="designation"  placeholder="Designation" value="{{old('designation')}}">
                          
                        </div>
                  </div>
                  
                </div><!-- End of Row -->
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="current_address" class="font-weight-bold">Current Address </label>
                          <textarea class="current_address form-control" id="current_address">{{old('current_address')}}</textarea>
                          
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="parmanent_address" class="font-weight-bold">Parmanent Address </label>
                          <textarea class="parmanent_address form-control" id="parmanent_address">{{old('parmanent_address')}}</textarea>
                          
                        </div>
                  </div>
                  
                </div><!-- End of Row -->
                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="contact_no" class="font-weight-bold">Contact No <span class="_requried">*</span></label>
                          <input type="text" name="contact_no" required class="form-control" value="{{old('contact_no')}}" placeholder="Contact No">
                          
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="email" class="font-weight-bold">Email<span class="_requried">*</span> </label>
                          <input type="email" name="email" required class="form-control" value="{{old('email')}}" placeholder="Email">
                          
                        </div>
                  </div>
                  
                </div><!-- End of Row -->

                <div class="row">
                  <div class="col-sm-6 col-md-6 col-xs-6">
                      <div class="form-group">
                          <label for="alumni_category" class="font-weight-bold">Membership Type</label>
                          <select name="alumni_category" class="form-control " id="alumni_category" required="true">
                              <option value="">--Select--</option>
                              @forelse($membership_types as $key=>$val)
                                <option value="{{$val->id}}"
                                  @if(old('alumni_category')==$val->id) selected @endif 
                                 >{{ $val->name ?? '' }}</option>
                              @empty
                              @endforelse
                            </select>
                        </div>
                      <div class="form-group">
                          <label for="member_image" class="font-weight-bold">Photo</label>
                          <input type="file" name="member_image" class="form-control " accept="image/*" onchange="loadFile(event,1 )" >
                                <img style="margin-top: 5px;width: 140px;" id="output_1" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}" />
                        </div>
                  </div>
                  <div class="col-sm-6 col-md-6 col-xs-6">
                    <div class="form-group">
                          <label for="payment_amount" class="font-weight-bold">Payment Amount</label>
                           <input type="text" class="form-control " name="payment_amount" id="payment_amount"  placeholder="Payment Amount" value="{{old('payment_amount')}}">
                          
                        </div>

                      <div class="form-group">
                          <label for="payment_method_id" class="font-weight-bold">Payment Method</label>
                          <select class="form-control payment_method_id" name="payment_method_id" id="payment_method_id" > 
                            <option value="">--Select--</option>
                                @forelse($paying_systems as $key=>$val)

                                 <option value="{{ $val->id ?? '' }}" 
                                  @if(old('payment_method_id')==$val->id) selected @endif 
                                  data-batch="{{ $val->code ?? '' }}">{{ $val->name ?? '' }} </option>
                                 @empty
                                 @endforelse
                               </select>
                        </div>
                      <div class="form-group">
                          <label for="payment_details" class="font-weight-bold">Cheque/Bank draft/Pay order No</label>
                           <input type="text" class="form-control " name="payment_details" id="payment_details"  placeholder="Cheque/Bank draft/Pay order No" value="{{old('payment_details')}}">
                          
                        </div>
                      <div class="form-group">
                          <label for="bank" class="font-weight-bold">Bank</label>
                           <input type="text" class="form-control " name="bank" id="bank"  placeholder="Bank Name" value="{{old('bank')}}">
                          
                        </div>
                      <div class="form-group">
                          <label for="branch" class="font-weight-bold">Branch</label>
                           <input type="text" class="form-control " name="branch" id="branch"  placeholder="Branch Name" value="{{old('branch')}}">
                          
                        </div>

                  </div>
                </div><!-- End of Row -->

                <div class="row">
                   <div class="col-md-12 text-center">
                     <button type="submit" class="btn btn-sm btn-success">Submit</button>
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-md-12">
                     {!! $settings->reg_notice ?? '' !!}
                   </div>
                 </div>

                 
               </form>
               </div>
            </div>

            
           
               
            
        </div><!-- Left side content End -->
        
    </div>
 
</section> <!-- Slider End -->

 </div> <!-- End Container -->
@stop

@section('script')

<script type="text/javascript">
 var loadFile = function(event,_id) {
    var ids = `output_${_id}`;
    var output = document.getElementById('output_'+_id);
    output.src = URL.createObjectURL(event.target.files[0]);
    console.log(event.target.files[0])
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };

</script>
@endsection