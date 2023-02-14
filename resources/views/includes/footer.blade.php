
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
      <div>
        <a href="" class="text-white me-4">
          <i class="fa fa-facebook-f"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fa fa-twitter"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fa fa-google"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fa fa-instagram"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fa fa-linkedin"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fa fa-github"></i>
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
            <p><i class="fa fa-home mr-3"></i>{{ $settings->_address ?? '' }}</p>
            <p><i class="fa fa-envelope mr-3"></i> {{ $settings->_email ?? '' }}</p>
            <p><i class="fa fa-phone mr-3"></i> {{ $settings->_phone ?? '' }}</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3"
         style="background-color: rgba(0, 0, 0, 0.2)"
         >
      © {{date('Y')}} Copyright:
      <a class="text-white" href="https://mdbootstrap.com/"
         >{{ $settings->title ?? '' }}</a
        >
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->

</div>
<!-- End of .container -->