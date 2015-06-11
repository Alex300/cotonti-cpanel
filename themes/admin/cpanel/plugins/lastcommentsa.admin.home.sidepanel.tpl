<!-- BEGIN: MAIN -->
<div class="col-xs-12 col-sm-6">
    <div class="panel panel-default margintop20">
        <div class="panel-heading">
            <h4 class="panel-title">{PHP.L.comments_comments}:</h4>
        </div>
        <div class="panel-body">
            <ul>
                <!-- BEGIN: ADMIN_COMMENTS_ROW -->
                <li style="border-bottom: 1px solid #cccccc">
                    {ADMIN_COMMENTS_ITEM_ID}. {ADMIN_COMMENTS_AUTHOR}.
                    <a title="{PHP.L.Open}" target="_blank" href="{ADMIN_COMMENTS_URL}">{ADMIN_COMMENTS_TEXTFULL}</a>
                    <a title="{PHP.L.Delete}" class="confirmLink" href="{ADMIN_COMMENTS_ITEM_DEL_URL}">[X]</a>
                </li>
                <!-- END: ADMIN_COMMENTS_ROW -->
            </ul>
            <p class="paging"><a class="button" href="{ADMIN_COMMENTS_URL}">{PHP.L.More}</a></p>
        </div>
    </div>
</div>
<!-- END: MAIN -->