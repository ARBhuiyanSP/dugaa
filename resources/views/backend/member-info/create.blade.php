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
                {!! Form::open(array('route' => 'member-info.store','method'=>'POST','enctype'=>'multipart/form-data')) !!}
                    <div class="row">
                      
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                                 <label for="member_id" class="col-sm-4 col-form-label">Alumni Id:</label>
                                 <div class="col-sm-8">
                                {!! Form::text('member_id', null, array('placeholder' => 'Alumni Id','class' => 'form-control','readonly'=>'true','id'=>'member_id')) !!}
                              </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                              <label for="first_name" class="col-sm-4 col-form-label">First Name:</label>
                               <div class="col-sm-8">
                                {!! Form::text('first_name', null, array('placeholder' => 'First Name','class' => 'form-control','id'=>'first_name')) !!}
                              </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                               <label for="last_name" class="col-sm-4 col-form-label">Last Name:</label>
                               <div class="col-sm-8">
                                {!! Form::text('last_name', null, array('placeholder' => 'Last Name','class' => 'form-control','id'=>'last_name')) !!}
                              </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                              <label for="batch" class="col-sm-4 col-form-label">Batch:</label>
                               
                                {!! Form::text('batch', null, array('placeholder' => 'Batch','class' => 'form-control col-sm-8','id'=>'batch')) !!}
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                                <strong class="col-sm-4">Gender:</strong>
                                <select name="entery_degree" class="form-control col-sm-8" required="true">
                                  <option value="">Select Gender</option>
                                  @forelse($genders as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                                <strong class="col-sm-4">Alumni Category:</strong>
                                <select name="alumni_category" class="form-control col-sm-8" required="true">
                                  <option value="">--Select--</option>
                                  @forelse($membership_types as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                                <strong class="col-sm-4">Admission Session:</strong>
                                <select name="admission_session" class="form-control col-sm-8" required="true">
                                  <option value="">--Select--</option>
                                  @forelse($examsessions as $key=>$val)
                                    <option value="{{ $val->name }}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                       
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                                <strong class="col-sm-4">Entery Degree:</strong>
                                <select name="entery_degree" class="form-control col-sm-8" required="true">
                                  <option value="">Select Degree</option>
                                  @forelse($degress as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4">
                            <div class="form-group row">
                                <strong class="col-sm-4">Exit Degree:</strong>
                                <select name="exit_degree" class="form-control col-sm-8" required="true">
                                  <option value="">Select Degree</option>
                                  @forelse($degress as $key=>$val)
                                    <option value="{{$val->id}}">{{ $val->name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        
                        
                        
                        
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Entry Degree Comletion Year:</strong>
                                <select name="entery_degree_completion_year" 
                                class="form-control col-sm-8" >
                                  <option value="0000">0000</option>
                                 @for ($year = 1940; $year <= 2050; $year++) 
                                <option value="{{$year}}">{{ $year ?? '' }}</option>
                                @endfor
                                  
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Exit Degree Comletion Year:</strong>
                                <select name="exit_year" class="form-control col-sm-8" >
                                  <option value="0000">0000</option>
                                 @for ($year = 1940; $year <= 2050; $year++) 
                                <option value="{{$year}}">{{ $year ?? '' }}</option>
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
                                <img style="margin-top: 5px;width: 140px;" id="output_1" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group row">
                                <strong class="col-sm-4">Scanced Form:</strong>
                                <input type="file" name="scanced_form" class="form-control col-sm-8" accept="image/*" onchange="loadFile(event,2 )" >
                                
                                <img style="margin-top: 5px;width: 140px;" id="output_2" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}" />
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