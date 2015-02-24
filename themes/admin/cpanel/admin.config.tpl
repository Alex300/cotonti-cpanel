<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<!-- BEGIN: EDIT -->
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">{ADMIN_CONFIG_EDIT_TITLE}</h4>
    </div>
    <div class="panel-body">
        {ADMIN_CONFIG_EDIT_CUSTOM}
        <form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
        <table class="table">
            <thead>
                <tr>
                    <th class="width30">{PHP.L.Parameter}</th>
                    <th class="width50" style="max-width: 200px">{PHP.L.Value}</th>
                    <th>{PHP.L.Reset}</th>
                </tr>
            </thead>
        <!-- BEGIN: ADMIN_CONFIG_ROW -->
        <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
            <tr>
                <td class="group_begin" colspan="3">
                    <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                </td>
            </tr>
        <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
        <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
            <tr>
                <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
                <td>
                    {ADMIN_CONFIG_ROW_CONFIG}
                    <!-- IF {ADMIN_CONFIG_ROW_CONFIG_MORE} -->
                    <span class="help-block">{ADMIN_CONFIG_ROW_CONFIG_MORE}</span>
                    <!-- ENDIF -->
                </td>
                <td class="centerall">
                    <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-sm btn-info">
                        <span class="fa fa-refresh"></span> {PHP.L.Reset}
                    </a>
                </td>
            </tr>
        <!-- END: ADMIN_CONFIG_ROW_OPTION -->
        <!-- END: ADMIN_CONFIG_ROW -->
            <tr>
                <td colspan="3">
                    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                </td>
            </tr>
        </table>
        </form>
    </div>
</div>
<!-- END: EDIT -->


<!-- BEGIN: DEFAULT -->
<!-- BEGIN: ADMIN_CONFIG_COL -->
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">{ADMIN_CONFIG_COL_CAPTION}</h4>
    </div>
    <div class="panel-body">
        <div class="row">
            <!-- BEGIN: ADMIN_CONFIG_ROW -->
            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 margintop10 marginbottom10">
                <a href="{ADMIN_CONFIG_ROW_URL}" class="ajax thumbicons">
                    <!-- IF {ADMIN_CONFIG_ROW_ICO} -->
                    <img src="{ADMIN_CONFIG_ROW_ICO}"/>
                    <!-- ELSE -->
                    <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
                    <!-- ENDIF -->
                    {ADMIN_CONFIG_ROW_NAME}
                </a>
            </div>
            <!-- END: ADMIN_CONFIG_ROW -->
        </div>
    </div>
</div>
<!-- END: ADMIN_CONFIG_COL -->
<!-- END: DEFAULT -->

<!-- END: MAIN -->