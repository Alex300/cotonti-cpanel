<!-- BEGIN: MAIN -->
<!-- IF {PAGE_TITLE} -->
<h2 class="tags margintop10"><img src="{PHP.cfg.modules_dir}/files/files.png" style="vertical-align: middle;" /> {PAGE_TITLE}</h2>
<!-- ENDIF -->

<div class="clearfix"></div>

<div class="row">
    <!-- BEGIN: GD_INFO -->
    <div class="col-xs-12 col-md-4">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.files_gd}</h4>
            </div>
            <div class="panel-body">
                <ul class="follow">
                    <!-- BEGIN: ROW -->
                    <li>{GD_DATAS_NAME}: <span class="strong">{GD_DATAS_DATAS_ENABLE}</span></li>
                    <!-- END: ROW -->
                </ul>
            </div>
        </div>
    <!-- END: GD_INFO -->
    </div>
</div>

<div class="text-center margintop10">
    <em>{PHP.L.Version}:</em> <strong>{PHP.cot_modules.files.version}</strong>.
</div>

<!-- END: MAIN -->