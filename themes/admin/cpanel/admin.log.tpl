<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.isadmin} -->
<div class="button-toolbar">
    <a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}" class="ajax btn btn-danger"><span class="fa fa-trash-o"></span>
        {PHP.L.adm_purgeall}</a>
</div>
<!-- ENDIF -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="panel panel-default margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Log} ({ADMIN_LOG_TOTALDBLOG})</h4>
    </div>
    <div class="panel-body">
        <form action="" class="marginbottom10 form-inline">
            {PHP.L.Group}:
            <select name="groups" size="1" class="form-control" onchange="redirect(this)">
                <!-- BEGIN: GROUP_SELECT_OPTION -->
                <option value="{ADMIN_LOG_OPTION_VALUE_URL}"{ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
                <!-- END: GROUP_SELECT_OPTION -->
            </select>
        </form>

        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th class="width5">#</th>
                    <th class="width15">{PHP.L.Date} (GMT)</th>
                    <th class="width10">{PHP.L.Ip}</th>
                    <th class="width15">{PHP.L.User}</th>
                    <th class="width15">{PHP.L.Group}</th>
                    <th class="width40">{PHP.L.Log}</th>
                </tr>
            </thead>
            <!-- BEGIN: LOG_ROW -->
            <tr>
                <td class="textcenter">{ADMIN_LOG_ROW_LOG_ID}</td>
                <td class="textcenter">{ADMIN_LOG_ROW_DATE}</td>
                <td class="textcenter"><a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}">{ADMIN_LOG_ROW_LOG_IP}</a></td>
                <td class="textcenter">{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
                <td class="textcenter"><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
                <td>{ADMIN_LOG_ROW_LOG_TEXT}</td>
            </tr>
            <!-- END: LOG_ROW -->
        </table>

        <!-- IF {ADMIN_LOG_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin: 0">
                    {ADMIN_LOG_PAGINATION_PREV}{ADMIN_LOG_PAGNAV}{ADMIN_LOG_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_LOG_ON_PAGE}</span>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->