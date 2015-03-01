<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.editdeleteentries}</h4>
    </div>
    <div class="panel-body">
        <!-- IF {ADMIN_BANLIST_TOTALITEMS} > 0 -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="width20">{PHP.L.banlist_ipmask}</th>
                    <th class="width15">{PHP.L.banlist_emailmask}</th>
                    <th class="width25">{PHP.L.banlist_reason}</th>
                    <th class="width20">{PHP.L.banlist_duration}</th>
                    <th class="width20">{PHP.L.Action}</th>
                </tr>
            <thead>
            <!-- BEGIN: ADMIN_BANLIST_ROW -->
            <tr>
                <form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
                <td>{ADMIN_BANLIST_ROW_IP}</td>
                <td>{ADMIN_BANLIST_ROW_EMAIL}</td>
                <td>{ADMIN_BANLIST_ROW_REASON}</td>
                <td>{ADMIN_BANLIST_ROW_EXPIRE}</td>
                <td>
                    <button type="submit" class="btn btn-info"><span class="fa fa-refresh"></span> {PHP.L.Update}</button>
                    <a href="{ADMIN_BANLIST_ROW_DELURL}" class="btn btn-danger"><span class="fa fa-trash-o"></span> {PHP.L.Delete}</a>
                </td>
                </form>
            </tr>
            <!-- END: ADMIN_BANLIST_ROW -->
        </table>

        <!-- IF {ADMIN_BANLIST_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin: 0">
                    {ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_BANLIST_COUNTER_ROW}</span>
        </div>
        <!-- ENDIF -->
        <!-- ELSE -->
        <h4 class="text-muted text-center">{PHP.L.None}</h4>
        <!-- ENDIF -->
    </div>
</div>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addbanlistModal">
    <span class="fa fa-plus"></span> {PHP.L.Add}
</button>

<!-- Modal -->
{PHP|cot_set_var('labelClass', 'col-md-3')}
{PHP|cot_set_var('elementClass', 'col-md-9')}
<div class="modal fade" id="addbanlistModal" tabindex="-1" role="dialog" aria-labelledby="addbanlistModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="addbanlistModalLabel">{PHP.L.Add}</h4>
            </div>

            <form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post"
                  class="ajax form-horizontal">
                <div class="modal-body">
                    <div class="form-group {PHP|cot_formGroupClass('nbanlistip')}">
                        <label for="" class="{PHP.labelClass} control-label">{PHP.L.banlist_ipmask}:</label>
                        <div class="{PHP.elementClass}">{ADMIN_BANLIST_IP}</div>
                    </div>

                    <div class="form-group {PHP|cot_formGroupClass('nbanlistemail')}">
                        <label for="" class="{PHP.labelClass} control-label">{PHP.L.banlist_emailmask}:</label>
                        <div class="{PHP.elementClass}">{ADMIN_BANLIST_EMAIL}</div>
                    </div>

                    <div class="form-group {PHP|cot_formGroupClass('nbanlistreason')}">
                        <label for="" class="{PHP.labelClass} control-label">{PHP.L.banlist_reason}:</label>
                        <div class="{PHP.elementClass}">{ADMIN_BANLIST_REASON}</div>
                    </div>

                    <div class="form-group {PHP|cot_formGroupClass('nexpire')}">
                        <label for="" class="{PHP.labelClass} control-label">{PHP.L.banlist_duration}:</label>
                        <div class="{PHP.elementClass}">{ADMIN_BANLIST_EXPIRE}</div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-times-circle"></span>
                        {PHP.L.Close}</button>
                    <button id="addbanlistSubmit" type="submit"  class="btn btn-primary"><span class="fa fa-check"></span> {PHP.L.Add}</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $('#addbanlistSubmit').click(function(){
        $('#addbanlistModal').modal('hide');
        $('body').removeClass('modal-open');
    });
</script>
<!-- END: MAIN -->