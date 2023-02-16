

<!doctype html>
<html>
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" >
         

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


        <link rel="stylesheet" href="{{asset('assets-lightbox/css/animate.css')}}">
       
        <link rel="stylesheet" href="{{asset('assets-lightbox/css/media-queries.css')}}">



    <link rel="stylesheet" type="text/css" href="{{asset('frontend/style.css')}}">
    <title>@yield('title')</title>
    @yield('style')
</head>
<body>
<div class="container-fluid">
  
       @include('includes.header')

   
   <div id="main" class="row">
           @yield('content')
   </div>
   <footer class="row mt-3">
      @include('includes.footer')
   </footer>
</div>
    <!-- Javascript -->
    <script src="{{asset('assets-lightbox/js/jquery-3.5.1.min.js')}}"></script>
    <script src="{{asset('assets-lightbox/js/jquery-migrate-3.3.0.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
        <script src="{{asset('assets-lightbox/js/jquery.backstretch.min.js')}}"></script>
        <script src="{{asset('assets-lightbox/js/wow.min.js')}}"></script>
        <script src="{{asset('assets-lightbox/js/waypoints.min.js')}}"></script>
        <script src="{{asset('assets-lightbox/js/scripts.js')}}"></script>


<script>
window.onload = function () {
  var span = document.createElement('span');

  span.className = 'fas';
  span.style.display = 'none';
  document.body.insertBefore(span, document.body.firstChild);
  
  //alert(window.getComputedStyle(span, null).getPropertyValue('font-family'));
    
  document.body.removeChild(span);
};
</script>

    @yield('script')
</body>
</html>