<!DOCTYPE html>
<html>
<head>
  <title></title>
  @php
  $backgound_path= asset('/')."/".$data->background_image ?? '';
  @endphp
  <style type="text/css">
  @media print {
      .card {
        -webkit-print-color-adjust: exact !important;
        background-image: url({{$backgound_path}}) !important;
        background-size: contain !important;
      }

      .card{
        opacity: 1;
      }

}
    .full_card{
  position: relative;
  height: 100%;
}


    .card {
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
      margin-bottom: 20px;
      width: 3.6in;
      height:4.5in;
      margin:0px auto;
      margin-bottom: 10px;
      background:  url({{$backgound_path}});
      background-size: contain !important;

      
    }
.card-header {
     width: 100%;
    }

    @media print {
        .card {
          break-inside: avoid;
        }
      }

    }

    
  </style>
</head>
<body>

@forelse($members as $m_key=>$m_val)
<div class="full_card">
<div class="card" >
  <div class="card-header" style="">
    <h3 style="margin-top: 0px;text-align: center;">{{ $data->name ?? '' }}</h3>
    <div style="width: 100%;text-align: center;clear: both;">
      <div style="width: 25%;float: left;">
        <img style="width: 100%;height: auto;" src="{{asset('/')}}{{$data->card_left_image ?? ''}}" />
      </div>
      <div style="width: 50%;float: left;vertical-align: text-top;">
        <h4 style="vertical-align: text-top;margin-top: 0px;">{{ $data->department_name ?? '' }}</h4>
        <h4 style="vertical-align: text-top;">{{ $data->event_date ?? '' }}</h4>
      </div>
      <div style="width: 25%;float: left;">
        <img style="width: 100%;height: auto;" src="{{asset('/')}}{{$data->card_right_image ?? ''}}" />
      </div>
    </div>
  </div>
  <hr  style="width: 100%;clear: both;">
  
  <div class="card-body" style="width: 100%;clear: both;">
    <h3 style="text-align: center;margin-top: 0px;margin-bottom: 0px;">{{ $m_val->_alumni_cat->name ?? '' }}</h3>
    <div style="width: 120px;
    height: 120px;
    margin: 0px auto;
    align-items: center;
    border: 1px solid silver;
    padding: 3px;">
     @php
     $file_path = asset('/')."/".$m_val->member_image;
    @endphp
       @if(file_exists($file_path))

      <img style="width: 100%;height: auto;margin-top: 0px;" src="{{asset('/')}}{{  $m_val->member_image}}" />
      @endif
    </div>
    <div style="width: 100%;clear: both;">
      <div style="width: 100%;clear: both;margin-bottom: 6px;margin-top:5px;"><b>Name: {{ $m_val->first_name ?? '' }} {{ $m_val->last_name ?? '' }}</b></div>
      <div style="width: 100%;clear: both;margin-bottom: 6px;">Degree: {{ $m_val->_entry_degree->name ?? '' }} </div>
      <div style="width: 100%;clear: both;margin-bottom: 6px;">Year: {{ $m_val->entery_degree_completion_year ?? '' }}</div>
      <div style="width: 100%;clear: both;margin-bottom: 6px;">Batch: {{ $m_val->batch ?? '' }}</div>
      <div style="width: 100%;clear: both;margin-bottom: 6px;">Alumni ID: {{ $m_val->member_id ?? '' }}</div>
    </div>
    
  </div>
  
</div>
</div>
@empty
@endforelse


</body>
</html>