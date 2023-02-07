@include('layouts.header')
<div id="main" class="clearfix">
    <div class="inner-wrap clearfix">
        <div id="primary">
            <div class="row">
                <div class="col-md-6">
                <h5><i class="fa fa-location-arrow" aria-hidden="true" style="color:#289DCC;"></i> Our Address:</h5>
                    <p><i class="fa fa-home" aria-hidden="true"></i> Alumni Floor, Nabab Nawab Ali Chowdhury Senate Bhavan,
        University of Dhaka.
        Dhaka - 1000.</p>
                </div>
                <div class="col-md-6">
                    <h5><i class="fa fa-headphones" aria-hidden="true" style="color:#289DCC;"></i> Our Contacts:</h5>
                    <ul>
                        <li><i class="fa fa-mobile" aria-hidden="true"></i> 1254789612</li>
                        <li><i class="fa fa-mobile" aria-hidden="true"></i> 1254789612</li>
                        <li><i class="fa fa-mobile" aria-hidden="true"></i> 1254789612</li>
                    </ul>
                </div>
            </div>    
        
        <div id="content" class="clearfix">
                <article id="post-24" class="post-24 page type-page status-publish hentry">
                    <div class="entry-content clearfix">
                        <h5><i class="fa fa-map-marker" aria-hidden="true" style="color:#289DCC;"></i> Find Us On Google Map</h5>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16968.05987695978!2d90.39287419999998!3d23.733835999999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb7092a9c25197fa4!2sDhaka%20University!5e1!3m2!1sen!2sbd!4v1675658420095!5m2!1sen!2sbd" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                    </div>
                </article>
            </div><!-- #content -->
        </div><!-- #primary -->

        <div id="secondary">
            @include('layouts.sidebar')
        </div>
    </div><!-- .inner-wrap -->
</div><!-- #main -->
</hr> 
@include('layouts.footer')