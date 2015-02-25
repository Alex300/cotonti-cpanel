<!-- BEGIN: MAIN -->
<script type="text/javascript">
    $(document).ready(function()
    {
        $('.moreinfo').hide();
        $(".mor_info_on_off").click(function()
        {
            var kk = $(this).attr('id');
            $('#'+kk).children('.moreinfo').slideToggle(100);
        });
    });
</script>
<div class="button-toolbar">
    <a title="{PHP.L.Configuration}" href="{ADMIN_TAGS_CONFIG_URL}" class="btn btn-default"><span class="fa fa-wrench"></span>
        {PHP.L.Configuration}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<form name="sortfiltertag" action="{ADMIN_TAGS_FORM_ACTION}" method="post" class="form-inline margintop20">
    <!-- IF {ADMIN_TAGS_TOTALITEMS} > 1 -->
    <div class="form-group">
        <label>{PHP.L.adm_sort}</label> {ADMIN_TAGS_ORDER} {ADMIN_TAGS_WAY}
    </div>
    <!-- ENDIF -->
    <div class="form-group marginleft10">
        <label>{PHP.L.Show}</label> {ADMIN_TAGS_FILTER}
    </div>
    <div class="form-group marginleft10">
        <label>{PHP.L.Search}</label> <input name="tag" class="form-control" type="text" value="" />
    </div>
    <button name="paction" type="submit" class="btn btn-info"><span class="fa fa-search"></span> {PHP.L.Filter}</button>
</form>

<div class="panel panel-default margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.viewdeleteentries}</h4>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="width15">{PHP.L.Code}</th>
                    <th class="width5">{PHP.L.adm_area}</th>
                    <th class="text-center width5">{PHP.L.Count}</th>
                    <th class="width35">{PHP.L.adm_tag_item_area}</th>
                    <th>{PHP.L.Action}</th>
                </tr>
            </thead>
            <!-- BEGIN: ADMIN_TAGS_ROW -->
            <tr>
                <td><b>{ADMIN_TAGS_CODE}</b></td>
                <td>{ADMIN_TAGS_AREA}</td>
                <td class="text-center">{ADMIN_TAGS_COUNT}</td>
                <td>
                    <div id="mor_{PHP.ii}" class='mor_info_on_off'>
                        <span style="cursor:pointer;">{ADMIN_TAGS_ITEMS}</span><br />
                        <div class="moreinfo">
                            <!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->
                            {ADMIN_TAGS_ITEM_TITLE}<br />
                            <!-- END: ADMIN_TAGS_ROW_ITEMS -->
                        </div>
                    </div>
                </td>
                <td class="form-inline action">
                    <form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
                        <input name="old_tag" type="hidden" value="{ADMIN_TAGS_CODE|htmlspecialchars($this)}" />
                        <input name="d" type="hidden" value="{PHP.d}" />
                        <input name="sorttype" type="hidden" value="{PHP.sorttype}" />
                        <input name="sortway" type="hidden" value="{PHP.sortway}" />
                        <input name="filter" type="hidden" value="{PHP.filter}" />
                        {ADMIN_TAGS_TAG}
                        <button name="action" type="submit" value="{PHP.L.Edit}" class="btn btn-info"><span class="fa fa-edit"></span> {PHP.L.Edit}</button>
                        <button name="action" type="submit" value="{PHP.L.Delete}" class="btn btn-danger"><span class="fa fa-trash-o"></span> {PHP.L.Delete}</button>
                    </form>
                </td>
            </tr>
            <!-- END: ADMIN_TAGS_ROW -->
        </table>

        <!-- IF {ADMIN_TAGS_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin: 0">
                    {ADMIN_TAGS_PAGINATION_PREV}{ADMIN_TAGS_PAGNAV}{ADMIN_TAGS_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total}: {ADMIN_TAGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_TAGS_COUNTER_ROW}</span>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->