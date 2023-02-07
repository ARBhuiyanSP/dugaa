@include('layouts.header')
<div id="main" class="clearfix">
    <div class="inner-wrap clearfix">
        <div id="primary">
            <header class="page-header">
                <h1 class="page-title" style="border-bottom-color: #289DCC"><span style="background-color: #289DCC"><i class="fa fa-download" aria-hidden="true" style="color:#fff;"></i> Available Downloads</span></h1>		
            </header><!-- .page-header -->
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>File name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Membership Application Form</td>
                        <td><button type="button" class="btn btn-primary btn-sm" style="margin:0;"> Download</button></td>
                    </tr>
                    <tr>
                        <td>Scholarship Application Form (2022)</td>
                        <td><button type="button" class="btn btn-primary btn-sm" style="margin:0;"> Download</button></td>
                    </tr>
                </tbody>
            </table>     
        </div><!-- #primary -->

        <div id="secondary">
            @include('layouts.sidebar')
        </div>
    </div><!-- .inner-wrap -->
</div><!-- #main -->
</hr> 
@include('layouts.footer')