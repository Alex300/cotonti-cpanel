<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.isadmin} -->
<div class="button-toolbar">
    <a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-danger"><span class="fa fa-trash-o"></span> {PHP.L.adm_purgeall}</a>
    <a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn btn-warning">{PHP.L.adm_ref_prunelowhits}</a>
</div>
<!-- ENDIF -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="panel panel-default margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Referers}</h4>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="width70">{PHP.L.Referer}</th>
                    <th class="width30">{PHP.L.Hits}</th>
                </tr>
            </thead>
            <!-- BEGIN: REFERERS_ROW -->
            <tr>
                <td colspan="2" class="strong"><a href="http://{ADMIN_REFERERS_REFERER}">{ADMIN_REFERERS_REFERER}</a></td>
            </tr>
            <!-- BEGIN: REFERERS_URI -->
            <tr>
                <td>&nbsp; &nbsp; <a href="{ADMIN_REFERERS_URI}">{ADMIN_REFERERS_URI}</a></td>
                <td>{ADMIN_REFERERS_COUNT}</td>
            </tr>
            <!-- END: REFERERS_URI -->
            <!-- END: REFERERS_ROW -->

            <!-- IF {ADMIN_REFERERS_TOTALITEMS} == 0 -->
            <tr>
                <td class="text-center" colspan="2"><h4 class="text-muted">{PHP.L.None}</h4></td>
            </tr>
            <!-- ENDIF -->
        </table>

        <!-- IF {ADMIN_REFERERS_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin: 0">
                    {ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total} : {ADMIN_REFERERS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_REFERERS_ON_PAGE}</span>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->