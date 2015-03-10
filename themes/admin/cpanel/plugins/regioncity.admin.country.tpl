<!-- BEGIN: MAIN -->
<style type="text/css">
    a.thumbicons img{
        display: inline-block;
        vertical-align: middle;
        float: none;
    }
</style>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.rec_countries}</h4>
    </div>
    <div class="panel-body">
        <div class="row">
            <!-- BEGIN: ROWS -->
            <div class="col-xs-6 col-md-3 marginbottom10">
                <a href="{COUNTRY_ROW_URL}" class="thumbicons">{COUNTRY_ROW_FLAG}</a>
                <a href="{COUNTRY_ROW_URL}" class="thumbicons">{COUNTRY_ROW_NAME}</a>
            </div>
            <!-- END: ROWS -->
            <!-- BEGIN: NOROWS -->
            <div class="col-xs-12">
                <h4 class="text-center text-mutted">{PHP.L.ls_nocountries}</h4>
            </div>
            <!-- END: NOROWS -->
            </div>
    </div>
</div>
<!-- END: MAIN -->