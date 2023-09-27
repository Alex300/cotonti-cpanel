<!-- BEGIN: MAIN -->
<!-- IF {PAGE_TITLE} -->
<h2 class="tags margintop10"><img src="{PHP.cfg.modules_dir}/files/files.png" style="vertical-align: middle;" /> {PAGE_TITLE}</h2>
<!-- ENDIF -->

<div class="clearfix"></div>

<div class="row">
    <!-- BEGIN: IMAGICK_INFO -->
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <!-- IF {IS_ACTIVE} -->
                    <strong style="margin-right: 5px"><i class="fa fa-check text-success"></i></strong>
                    <!-- ENDIF -->
                    {PHP.L.files_imagick}
                </h4>
            </div>
            <div class="panel-body">
                <ul class="follow">
                    <!-- BEGIN: ROW -->
                    <li>{IMAGICK_DATA_NAME}: <span class="strong">{IMAGICK_DATA_VALUE}</span></li>
                    <!-- END: ROW -->
                </ul>
            </div>
        </div>
    </div>
    <!-- END: IMAGICK_INFO -->

    <!-- BEGIN: GD_INFO -->
    <div class="col-xs-12 col-md-4">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <!-- IF {IS_ACTIVE} -->
                    <strong style="margin-right: 5px"><i class="fa fa-check text-success"></i></strong>
                    <!-- ENDIF -->
                    {PHP.L.files_gd}
                </h4>
            </div>
            <div class="panel-body">
                <ul class="follow">
                    <!-- BEGIN: ROW -->
                    <li>{GD_DATA_NAME}: <span class="strong">{GD_DATA_VALUE}</span></li>
                    <!-- END: ROW -->
                </ul>
            </div>
        </div>
    </div>
    <!-- END: GD_INFO -->
</div>

<div class="text-center margintop10">
    <em>{PHP.L.Version}:</em> <strong>{PHP.cot_modules.files.version}</strong>.
</div>
<!-- END: MAIN -->