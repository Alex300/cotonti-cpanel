<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="button-toolbar">
    <a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="btn btn-default"><span class="fa fa-wrench"></span>
        {PHP.L.Configuration}</a>
</div>

<div class="panel panel-default margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.viewdeleteentries}</h4>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="width5">#</th>
                    <th class="width5">{PHP.L.adm_area}</th>
                    <th class="width5">{PHP.L.Code}</th>
                    <th class="width15">{PHP.L.Author}</th>
                    <th class="width15">{PHP.L.Date}</th>
                    <th class="width35">{PHP.L.comments_comment}</th>
                    <th class="width20">{PHP.L.Action}</th>
                </tr>
            </thead>
            <!-- BEGIN: ADMIN_COMMENTS_ROW -->
            <tr>
                <td>{ADMIN_COMMENTS_ITEM_ID}</td>
                <td>{ADMIN_COMMENTS_AREA}</td>
                <td>{ADMIN_COMMENTS_CODE}</td>
                <td>{ADMIN_COMMENTS_AUTHOR}</td>
                <td>{ADMIN_COMMENTS_DATE}</td>
                <td>{ADMIN_COMMENTS_TEXT}</td>
                <td>
                    <a title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" class="btn btn-info"><span class="fa fa-folder-open"></span> {PHP.L.Open}</a>
                    <a title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="btn btn-danger"><span class="fa fa-trash-o"></span>
                        {PHP.L.Delete}</a>
                </td>
            </tr>
            <!-- END: ADMIN_COMMENTS_ROW -->
        </table>

        <!-- IF {ADMIN_STRUCTURE_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin: 0">
                    {ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total}: {ADMIN_COMMENTS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_COMMENTS_COUNTER_ROW}</span>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->