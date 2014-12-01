<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<!-- BEGIN: UPDATE -->
<div class="block">
    <h3>{PHP.L.adminqv_update_notice}:</h3>
    <p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
</div>
<!-- END: UPDATE -->


<div class="row">
    <!-- BEGIN: MAINPANEL -->
    {ADMIN_HOME_MAINPANEL}
    <!-- END: MAINPANEL -->
</div>

<div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="panel panel-inverse margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">Cotonti:</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover table-condensed">
                    <tr>
                        <td class="width80">{PHP.L.Version}</td>
                        <td class="textcenter width20">{ADMIN_HOME_VERSION}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Database}</td>
                        <td class="textcenter">{ADMIN_HOME_DB_VERSION}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.home_db_rows}</td>
                        <td class="textcenter">{ADMIN_HOME_DB_TOTAL_ROWS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.home_db_indexsize}</td>
                        <td class="textcenter">{ADMIN_HOME_DB_INDEXSIZE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.home_db_datassize}</td>
                        <td class="textcenter">{ADMIN_HOME_DB_DATASSIZE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.home_db_totalsize}</td>
                        <td class="textcenter">{ADMIN_HOME_DB_TOTALSIZE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Plugins}</td>
                        <td class="textcenter">{ADMIN_HOME_TOTALPLUGINS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Hooks}</td>
                        <td class="textcenter">{ADMIN_HOME_TOTALHOOKS}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <!-- BEGIN: SIDEPANEL -->
    {ADMIN_HOME_SIDEPANEL}
    <!-- END: SIDEPANEL -->

</div>


<div class="clearfix"></div>
<!-- END: MAIN -->