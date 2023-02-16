
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="container-fluid my-5">

  <!-- Footer -->
  <footer
          class="text-center text-lg-start text-white"
          style="background-color: #1c2331"
          >
    <!-- Section: Social media -->
    <section
             class="d-flex justify-content-between p-4">
      <!-- Left -->
      <div class="me-5">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div >
        <a href="" >
         <i class="fab fa-facebook"></i>
        </a>
        <a href="" >
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" >
          <i class="fab fa-google"></i>
        </a>
        <a href="" >
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" >
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" >
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-9 col-lg-8 col-xl-8 mx-auto mb-4">
            <!-- Content -->
            <img src="{{asset('/')}}/{{$settings->logo}}" style="width: 100%;height: auto;">
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Contact</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
                <div style="text-align: left;">
                  {!! $settings->_address ?? '' !!}
                  {!! $settings->_email ?? '' !!}
                   {!! $settings->_phone ?? '' !!}
                </div>
          
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="footer-socket-wrapper clearfix p-1">
          <div class="inner-wrap">
          <div class="footer-socket-area">
          <font color="white">
          <span style="float: left;">Copyright © {{date('Y')}} {{$settings->name ?? '' }}</span> 
          <span style="float: right;">Designed and Developed by <a href="http://www.88innovationsltd.com/">88innovationsltd</a></span>
          </font>
          <br>                
          </div>
          </div>
          </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->

</div>
<!-- End of .container -->