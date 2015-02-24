<!-- BEGIN: MAIN -->
<div class="col-xs-12 col-sm-6">
    <div class="panel panel-default margintop20">
        <div class="panel-heading">
            <h4 class="panel-title">{PHP.L.Pages}:</h4>
        </div>
        <div class="panel-body">
            <ul class="follow">
                <li><a href="{ADMIN_HOME_URL}">{PHP.L.adm_valqueue}: {ADMIN_HOME_PAGESQUEUED}</a></li>
                <li><a href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
                <li><a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- END: MAIN -->