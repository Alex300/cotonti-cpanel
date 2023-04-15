<!-- BEGIN: MAIN -->
<div class="col-xs-12 col-sm-6">
    <div class="panel panel-default margintop20">
        <div class="panel-heading">
            <h4 class="panel-title">{PHP.L.Users}:</h4>
        </div>
        <div class="panel-body">
            <ul class="follow">
                <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.Configuration}</a></li>
                <li><a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_extrafields_users}</a></li>
                <li><a href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_users_rights}</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- END: MAIN -->