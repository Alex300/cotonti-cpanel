<!-- BEGIN: MAIN -->
<div class="panel panel-warning">
    <div class="panel-heading">
        <h3 class="panel-title">
            {MESSAGE_TITLE}
            <!-- IF {AJAX_MODE} -->
            <button type="button" class="close jqmClose" aria-hidden="true" style="margin-top: -3px">&times;</button>
            <!-- ENDIF -->
        </h3>
    </div>
    <div class="panel-body">{MESSAGE_BODY}</div>

    <!-- BEGIN: MESSAGE_CONFIRM -->
    <div class="panel-footer text-center">
        <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-primary"><span
                    class="glyphicon glyphicon-ok"></span> {PHP.L.Yes}</a>
        <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-default marginleft10"><span
                    class="glyphicon glyphicon-remove"></span> {PHP.L.No}</a>
    </div>
    <!-- END: MESSAGE_CONFIRM -->
</div>
<!-- END: MAIN -->