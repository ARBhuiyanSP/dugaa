<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{{$logo->title ?? '' }}</title>
<link rel="icon" type="image/x-icon" href="{{url('/')}}/{{ $settings->logo ?? '' }}">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  
  }
form {border: 3px solid #f1f1f1;
    box-shadow: 2px 2px 2px 2px #413c69;
    padding: 5px;}

input[type=email], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  color: white;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
    width: 50%;
    margin: 0px auto;
}

img.avatar {
  width: 70px;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<div class="imgcontainer">
    <a href="{{url('/')}}">
        <img src="{{url('/')}}/{{$settings->logo ?? ''}}" alt="Avatar" style="width: 100%;">
    </a>
  </div>
<div style="width: 320px;
    margin: 0px auto;
    margin-top: 10vh;
    border-radius: 10px;
    background-color: #ffffff;
    ">
   
    
    
<form method="POST" action="{!!  route('login')  !!}">
                        @csrf
  <p style="text-align: center;">Sign in to start your session</p>

  <div class="container">
    <label for="email"><b> {!!  __('E-Mail Address')  !!}</b></label>
    <input type="email" placeholder="Enter email" name="email" required value="{!! old('email') !!}">

    <label for="password"><b>{!!  __('Password')  !!}</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit"><img src="https://img.icons8.com/ios-filled/50/000000/login-rounded-right.png"/></i>

 </button>
 @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{!!  route('password.request')  !!}" >
                                        {!!  __('Forgot Your Password?')  !!}
                                    </a>
                                @endif
    
  </div>

</form>
</div>
</body>
</html>
