@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')

<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{!! $page_name ?? ''  !!} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              @can('member-info-list')
              <li class="breadcrumb-item active">
                 <a class="btn btn-sm btn-primary" href="{{ route('member-info.index') }}"> {{$page_name ?? '' }}</a>
               </li>
               @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
  <div class="message-area">
     @include('backend.common.message')
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             
              <div class="card-body">
                {!! Form::model($data, ['method' => 'POST','enctype'=>'multipart/form-data','route' => ['own-profile-update']]) !!}
                
                    <div class="row">
                      
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                                 <label for="member_id" class=" col-form-label">Alumni Id:</label>
                                 <div class="">
                                {!! Form::text('member_id', $data->member_id, array('placeholder' => 'Alumni Id','class' => 'form-control','readonly'=>'true','id'=>'member_id')) !!}
                              </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                              <label for="user_name" class="col-form-label">User Email:</label>
                               <div class="">
                                {!! Form::text('user_name', null, array('placeholder' => 'User Email','class' => 'form-control','id'=>'user_name')) !!}
                              </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                              <label for="first_name" class=" col-form-label">First Name:</label>
                               <div class="">
                                {!! Form::text('first_name', null, array('placeholder' => 'First Name','class' => 'form-control','id'=>'first_name')) !!}
                              </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                               <label for="last_name" class=" col-form-label">Last Name:</label>
                               <div class="">
                                {!! Form::text('last_name', null, array('placeholder' => 'Last Name','class' => 'form-control','id'=>'last_name')) !!}
                              </div>
                            </div>
                        </div>
                       <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                              <label for="bsc_year_passing" class=" col-form-label">BSc (Honors) Year of Passing:</label>
                              @php
                                $bsc_year_passing = \DB::table('year_batches')->orderBy('name','asc')->get()
                              @endphp
                               
                               <select class="form-control bsc_year_passing" name="bsc_year_passing" id="bsc_year_passing" onchange ="getSelectedBatch()">
                                @forelse($bsc_year_passing as $key=>$val)
                                 <option value="{{ $val->name ?? '' }}" data-batch="{{ $val->code ?? '' }}" @if($data->bsc_year_passing=== $val->name) selected @endif >{{ $val->name ?? '' }} - {{ $val->code ?? '' }}</option>
                                 @empty
                                 @endforelse
                               </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                              <label for="batch" class=" col-form-label">Batch:</label>
                               
                                {!! Form::text('batch', null, array('placeholder' => 'Batch','readonly'=>'true','class' => 'form-control ','id'=>'batch')) !!}
                            </div>
                        </div>
                        

                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                               <label for="gender_id" class=" col-form-label">Gender:</label>
                              
                                <select name="gender_id" class="form-control" required="true">
                                  <option value="">Select Gender</option>
                                  @forelse($genders as $key=>$val)
                                    <option value="{{$val->id}}" @if($data->entery_degree==$val->id) selected @endif >{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group ">
                                <label class=" col-form-label">Alumni Category:</label>
                                <input type="hidden" name="alumni_category" value="{{$data->alumni_category}}">
                                <input class="form-control" readonly type="text" name="alumni_category_name" value="{{$data->_alumni_cat->name ?? '' }}">
                                
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group ">
                               <label class=" col-form-label">Admission Session:</label>
                                <select name="admission_session" class="form-control " required="true">
                                  <option value="">--Select--</option>
                                  @forelse($examsessions as $key=>$val)
                                    <option value="{{ $val->id }}"  @if($data->admission_session==$val->id) selected @endif  >{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                       
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group ">
                               <label class=" col-form-label">Entery Degree:</label>
                                <select name="entery_degree" class="form-control " required="true">
                                  <option value="">Select Degree</option>
                                  @forelse($degress as $key=>$val)
                                    <option value="{{$val->id}}" @if($data->entery_degree==$val->id) selected @endif >{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group ">
                              <label class=" col-form-label">Exit Degree:</label>
                                <select name="exit_degree" class="form-control " required="true">
                                  <option value="">Select Degree</option>
                                  @forelse($degress as $key=>$val)
                                    <option value="{{$val->id}}" @if($data->exit_degree==$val->id) selected @endif  >{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        
                        
                        
                        
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                               <label class=" col-form-label">Entry Degree Comletion Year:</label>
                                <select name="entery_degree_completion_year" 
                                class="form-control " >
                                  <option value="0000">0000</option>
                                 @for ($year = 1940; $year <= 2050; $year++) 
                                <option value="{{$year}}" @if($data->entery_degree_completion_year==$year) selected @endif >{{ $year ?? '' }}</option>
                                @endfor
                                  
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group ">
                               <label class=" col-form-label">Exit Degree Comletion Year:</label>
                                
                                <select name="exit_year" class="form-control " >
                                  <option value="0000">0000</option>
                                 @for ($year = 1940; $year <= 2050; $year++) 
                                <option value="{{$year}}" @if($data->exit_year==$year) selected @endif >{{ $year ?? '' }}</option>
                                @endfor
                                  
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group row">
                                <strong class="col-sm-2">Current Affiliation:</strong>
                                {!! Form::text('current_affiliation', null, array('placeholder' => 'Current Affiliation','class' => 'form-control col-sm-10')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group row">
                                <strong class="col-sm-2">Designation:</strong>
                                {!! Form::text('designation', null, array('placeholder' => 'Designation','class' => 'form-control col-sm-10')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Current Address:</strong>
                                {!! Form::textArea('current_address', null, array('placeholder' => 'Current Address','class' => 'form-control col-sm-8','rows'=>'5')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Parmanent Address:</strong>
                                {!! Form::textArea('parmanent_address', null, array('placeholder' => 'Parmanent Address','class' => 'form-control col-sm-8','rows'=>'5')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Contact No:</strong>
                                {!! Form::text('contact_no', null, array('placeholder' => 'Contact No','class' => 'form-control col-sm-8')) !!}
                            </div>
                        </div>
                        
                        
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Email:</strong>
                                {!! Form::email('email', null, array('placeholder' => 'Email','class' => 'form-control col-sm-8')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group row">
                                <strong class="col-sm-2">Note:</strong>
                                {!! Form::text('note', null, array('placeholder' => 'Note','class' => 'form-control col-sm-10')) !!}
                            </div>
                        </div>
                         <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Photo:</strong>
                                <input type="file" name="member_image" class="form-control col-sm-8" accept="image/*" onchange="loadFile(event,1 )" >
                                <img style="margin-top: 5px;width: 140px;" id="output_1" class="banner_image_create" src="{{asset('/')}}{{$data->member_image ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Scanced Form:</strong>
                                <input type="file" name="scanced_form" class="form-control col-sm-8" accept="image/*" onchange="loadFile(event,2 )" >
                                
                                <img style="margin-top: 5px;width: 140px;" id="output_2" class="banner_image_create" src="{{asset('/')}}{{$data->scanced_form ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group ">
                                <label class=" col-form-label">Change Password and Send Mail:</label>
                                <select name="change_pssword_send_mail" class="form-control" >
                                  <option value="0">No</option>
                                  <option value="1">Yes</option>
                                </select>
                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group ">
                                <label class=" col-form-label">Password:</label>
                                <input type="password" name="password" placeholder="Password" class="form-control">
                                
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                
              </div>
            </div>
            <!-- /.card -->

            
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
</div>

@endsection

@section('script')

<script type="text/javascript">
  function getSelectedBatch() {
      var select = document.getElementById("bsc_year_passing");
      var option = select.options[select.selectedIndex];
      var batch = option.getAttribute("data-batch");
      $(document).find("#batch").val(batch)   
}

</script>
@endsection