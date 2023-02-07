@include('layouts.header')
<div id="main" class="clearfix">
    <div class="inner-wrap clearfix">
        <div id="primary">
            <header class="page-header">
                <h1 class="page-title" style="border-bottom-color: #289DCC"><span style="background-color: #289DCC"><i class="fa fa-graduation-cap" aria-hidden="true" style="color:#fff;"></i> Sample page</span></h1>		
            </header><!-- .page-header -->
            <p>Sample Content</p> 
        </div><!-- #primary -->

        <div id="secondary">
            @include('layouts.sidebar')
        </div>
    </div><!-- .inner-wrap -->
</div><!-- #main -->
</hr> 
@include('layouts.footer')