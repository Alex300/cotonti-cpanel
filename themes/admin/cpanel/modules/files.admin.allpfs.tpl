<!-- BEGIN: MAIN -->
<!-- IF {PAGE_TITLE} -->
<h2 class="tags margintop10"><img src="{PHP.cfg.modules_dir}/files/files.png" style="vertical-align: middle;" /> {PAGE_TITLE}</h2>
<!-- ENDIF -->

<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">&nbsp;</h4>
            </div>
            <div class="panel-body">

                <!-- BEGIN: SFS -->
                <table class="table">
                    <tr>
                        <td class="strong width60">{PHP.L.SFS}</td>
                        <td class="text-center width20">{SFS_COUNT}</td>
                        <td class="width20">
                            <a title="{PHP.L.Open}" href="{PHP|cot_url('files', 'm=pfs&uid=0')}" class="btn btn-info">
                                <span class="fa fa-folder-open"></span> {PHP.L.Open}</a>
                        </td>
                    </tr>
                </table>
                <!-- END: SFS -->

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="width60">{PHP.L.User}</th>
                            <th class="text-center">{PHP.L.Files}</th>
                            <th class="width20">{PHP.L.Open}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ALLPFS_ROW -->
                    <tr>
                        <td style="vertical-align:middle;">
                            <div class="list-avatar">{ALLPFS_ROW_USER_AVATAR}</div>

                            <a href="{ALLPFS_ROW_USER_DETAILSLINK}">{ALLPFS_ROW_USER_FULL_NAME}</a>
                            <!-- IF {ALLPFS_ROW_USER_FULL_NAME} != {ALLPFS_ROW_USER_NICKNAME} -->
                            <em>({ALLPFS_ROW_USER_NICKNAME})</em>
                            <!-- ENDIF -->
                        </td>
                        <td class="text-center" style="vertical-align:middle;">{ALLPFS_ROW_COUNT}</td>
                        <td style="vertical-align:middle;">
                            <a title="{PHP.L.Open}" href="{ALLPFS_ROW_URL}" class="btn btn-info"><span class="fa fa-folder-open"></span>
                                {PHP.L.Open}</a>
                        </td>
                    </tr>
                    <!-- END: ALLPFS_ROW -->
                </table>

                <!-- IF {ALLPFS_PAGNAV} -->
                <div class="text-right">
                    <nav>
                        <ul class="pagination" style="margin: 0">
                            {ALLPFS_PAGINATION_PREV}{ALLPFS_PAGNAV}{ALLPFS_PAGINATION_NEXT}
                        </ul>
                    </nav>
                    <span class="help-block">{PHP.L.Total}: {ALLPFS_TOTALITEMS}, {PHP.L.Onpage}: {ALLPFS_ON_PAGE}</span>
                </div>
                <!-- ENDIF -->
            </div>
        </div>

    </div>
</div>
<!-- END: MAIN -->