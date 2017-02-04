<!-- BEGIN: MAIN -->
<style>
    .menu-level-2{ padding-left: 20px !important; }
    .menu-level-3{ padding-left: 40px !important; }
    .menu-level-4{ padding-left: 55px !important; }
</style>
<div class=" button-toolbar block">
    <a href="{PHP.db_menugenerator|cot_url('admin', 'm=extrafields&n=$this')}" class="btn btn-info"><span class="fa fa-check-square-o"></span>
        {PHP.L.adm_extrafields_desc}</a>
</div>
<script type="text/javascript">
    var qid={PHP.local_max};
    function removemenugenerator(object)
    {
        var objectparent = $(object).parent();
        objectparent = $(objectparent).parent();
        $(objectparent).find("input[name^='item_title']").val('');
        $(objectparent).hide();
        return false;
    }

    $(document).ready(function(){
        $("#mg_new").hide();

        $("#addoption").click(function () {
            var object = $('#mg_new').clone().attr("id", 'mg_'+qid);

            $(object).find('.item_id').attr('name', 'item_id['+qid+']');
            $(object).find('.item_title').attr('name', 'item_title['+qid+']');
            $(object).find('.item_href').attr('name', 'item_href['+qid+']');
            $(object).find('.item_desc').attr('name', 'item_desc['+qid+']');
            $(object).find('.item_path').attr('name', 'item_path['+qid+']');
            $(object).find('.item_users').attr('name', 'item_users['+qid+']');

            $(object).insertBefore('#mg_new').show();
            qid++;
        });
        $("#menugeneratorbefore").show();
//        if(ident < 2)
//        { $("#addoption").click(); }

    });
</script>

<!-- BEGIN: GENERAL -->
<div class="panel panel-inverse margintop20">
    <div class="panel-heading">{PHP.L.menugenerator}</div>
    <div class="panel-body">
        <form action="{MENU_FORMACTION}" method="post" name="general">
            <table id="menugenerator" class="table table-responsive table-condensed table-striped">
                <thead>
                    <tr class="nodrag nodrop">
                        <th class="width15">{PHP.L.Path}</th>
                        <th class="width20">{PHP.L.mg_title}</th>
                        <th class="width20">{PHP.L.mg_href}</th>
                        <th class="width20">{PHP.L.mg_desc}</th>
                        <th class="width10">{PHP.L.mg_extra}</th>
                        <th class="width10">{PHP.L.mg_users}</th>
                        <th></th>
                    </tr>
                </thead>
                <!-- BEGIN: ITEMS  -->
                <tr id="mg_{MENU_ITEM_ID}">
                    <td style="text-align:right;">{MENU_ITEM_PATH}</td>
                    <td class="menu-level-{MENU_ITEM_LEVEL}">{MENU_ITEM_TITLE}</td>
                    <td>{MENU_ITEM_HREF}</td>
                    <td>{MENU_ITEM_DESC}</td>
                    <td>{MENU_ITEM_EXTRA}</td>
                    <td>{MENU_ITEM_USERS}</td>
                    <td>
                        <button name="addoption" onclick='removemenugenerator(this)' title="{PHP.L.Delete}" type='button' class="btn btn-sm btn-danger">
                            <span class="fa fa-trash-o"></span>
                        </button>
                    </td>
                </tr>
                <!-- END: ITEMS -->
                <tr id="menugeneratorbefore" class="nodrag nodrop" style="display:none;">
                    <td colspan='7'>
                        <button id="addoption" name="addoption" type="button" class="btn btn-info btn-sm">
                            <span class="fa fa-plus"></span> {PHP.L.Add}
                        </button>
                    </td>
                </tr>
            </table>

            <div class="">
                <button type="submit" class="btn btn-primary"><span class="fa fa-refresh"></span> {PHP.L.Update_menu}</button>
            </div>
	    </form>
    </div>
</div>

<div class="panel panel-inverse margintop20">
    <div class="panel-body">
        <p>{PHP.L.Tags}: {MENU_MENU_SET}.</p>
        {PHP.L.mg_example}
    </div>
</div>
<!-- END: GENERAL -->

<!-- BEGIN: HELP -->

<!-- END: HELP -->

<!-- END: MAIN -->