<!-- BEGIN: MAIN -->
<div class="button-toolbar">
    <a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-info"><span class="fa fa-refresh"></span> {PHP.L.Refresh}</a>
    <a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-danger"><span class="fa fa-times-circle"></span> {PHP.L.adm_purgeall}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="row">
    <div class="col-xs-12 col-lg-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">&nbsp;</h4>
            </div>
            <div class="panel-body">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="width25">{PHP.L.Item}</th>
                            <th class="width25 text-center">{PHP.L.Files}</th>
                            <th class="width25 text-center">{PHP.L.Size}</th>
                            <th class="width25 text-center">{PHP.L.Delete}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ADMIN_DISKCACHE_ROW -->
                    <tr>
                        <td>{ADMIN_DISKCACHE_ITEM_NAME}</td>
                        <td class="text-center">{ADMIN_DISKCACHE_FILES}</td>
                        <td class="text-center">{ADMIN_DISKCACHE_SIZE}</td>
                        <td class="text-center">
                            <a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}"
                               class="ajax btn btn-danger btn-sm"><span class="fa fa fa-times-circle"></span> {PHP.L.Delete}</a>
                        </td>
                    </tr>
                    <!-- END: ADMIN_DISKCACHE_ROW -->
                    <tr class="strong">
                        <td>{PHP.L.Total}:</td>
                        <td class="text-center">{ADMIN_DISKCACHE_CACHEFILES}</td>
                        <td class="text-center">{ADMIN_DISKCACHE_CACHESIZE}</td>
                        <td class="text-center">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->