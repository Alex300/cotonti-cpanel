<!-- BEGIN: MAIN -->
<div class="button-toolbar">
    <a title="{PHP.L.Configuration}" href="{ADMIN_POLLS_CONF_URL}" class="btn btn-default"><span class="fa fa-wrench"></span>
        {PHP.L.Configuration}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.Polls}</h4>
            </div>
            <div class="panel-body">
                <select name="jumpbox" size="1" onchange="redirect(this)" class="marginbottom10 margintop10 form-control">
                    <!-- BEGIN: POLLS_ROW_FILTER -->
                    <option value="{ADMIN_POLLS_ROW_FILTER_VALUE}"{ADMIN_POLLS_ROW_FILTER_CHECKED}>{ADMIN_POLLS_ROW_FILTER_NAME}</option>
                    <!-- END: POLLS_ROW_FILTER -->
                </select>

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="width10">{PHP.L.Date}</th>
                            <th class="width10">{PHP.L.Type}</th>
                            <th class="width35">{PHP.L.Poll} {PHP.L.adm_clicktoedit}</th>
                            <th class="width5 text-center">{PHP.L.Votes}</th>
                            <th class="width40">{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: POLLS_ROW -->
                    <tr>
                        <td class="">{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</td>
                        <td class="">{ADMIN_POLLS_ROW_POLL_TYPE}</td>
                        <td class="strong">
                            <!-- IF {ADMIN_POLLS_ROW_POLL_LOCKED} -->
                            <span class="text-danger"><span class="fa fa-lock"></span></span>
                            <!-- ENDIF -->
                            <a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a>
                        </td>
                        <td class="">{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
                        <td class="action">
                            <!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
                            <a href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-warning" title="{PHP.L.Lock}"
                               data-toggle="tooltip"><span class="fa fa-lock"></span></a>
                            <!-- ELSE -->
                            <a title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-success"
                               data-toggle="tooltip"><span class="fa fa-unlock"></span></a>
                            <!-- ENDIF -->
                            <a title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}" class="btn btn-danger"
                                    data-toggle="tooltip"><span class="fa fa-trash-o"></span></a>
                            <a title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}" class="btn btn-default"
                                    data-toggle="tooltip"><span class="fa fa-refresh"></span></a>
                            <a title="{PHP.L.adm_polls_bump}" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}" class="btn btn-default"
                                    data-toggle="tooltip"><span class="fa fa-arrow-up"></span></a>
                            <a title="{PHP.L.Open}" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}" class="btn btn-info"
                                    data-toggle="tooltip"><span class="fa fa-folder-open"></span></a>
                        </td>
                    </tr>
                    <!-- END: POLLS_ROW -->
                    <!-- BEGIN: POLLS_ROW_EMPTY -->
                    <tr>
                        <td colspan="5" class="text-center"><h4 class="text-muted">{PHP.L.adm_polls_nopolls}</h4></td>
                    </tr>
                    <!-- END: POLLS_ROW_EMPTY -->
                </table>

                <!-- IF {ADMIN_TAGS_PAGNAV} -->
                <div class="text-right">
                    <nav>
                        <ul class="pagination" style="margin: 0">
                            {ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}
                        </ul>
                    </nav>
                    <span class="help-block">{PHP.L.Total}: {ADMIN_POLLS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_POLLS_ON_PAGE}</span>
                </div>
                <!-- ENDIF -->
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{ADMIN_POLLS_FORMNAME}</h4>
            </div>
            <div class="panel-body">
                <form id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post" class="form-horizontal">
                    <!-- IF {PHP.cfg.jquery} -->
                    <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                    <script type="text/javascript">
                        var ansMax = {PHP.cfg.polls.max_options_polls};
                    </script>
                    <!-- ENDIF -->

                    <div class="form-group {PHP|cot_formGroupClass('poll_text')}">
                        <label class="col-sm-2 control-label">{PHP.L.poll}:</label>
                        <div class="col-sm-10">{EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}</div>
                    </div>

                    <div class="form-group {PHP|cot_formGroupClass('poll_option')}">
                        <label class="col-sm-2 control-label">{PHP.L.Options}:</label>
                        <div class="col-sm-10">
                            <!-- BEGIN: OPTIONS -->
                            <div class="polloptiondiv row marginbottom10">
                                <div class="col-xs-10">{EDIT_POLL_OPTION_TEXT}</div>
                                <div class="col-xs-2">
                                    <button name="deloption" class="deloption btn btn-danger" style="display:none;">
                                        <span class="fa fa-trash-o"></span>
                                    </button>
                                </div>
                            </div>
                            <!-- END: OPTIONS -->
                            <button id="addoption" name="addoption" class="deloption btn btn-info" style="display:none;">
                                <span class="fa fa-plus"></span> {PHP.L.Add}
                            </button>
                        </div>
                    </div>

                    <div class="form-group" style="margin-bottom: 0">
                        <div class="col-sm-offset-2 col-sm-10">{EDIT_POLL_MULTIPLE}</div>
                    </div>

                    <!-- BEGIN: EDIT -->
                    <div class="form-group" style="margin-bottom: 0">
                        <div class="col-sm-offset-2 col-sm-10">{EDIT_POLL_LOCKED}</div>
                    </div>

                    <div class="form-group" style="margin-bottom: 0">
                        <div class="col-sm-offset-2 col-sm-10">{EDIT_POLL_RESET}</div>
                    </div>

                    <div class="form-group" style="margin-bottom: 0">
                        <div class="col-sm-offset-2 col-sm-10">{EDIT_POLL_DELETE}</div>
                    </div>
                    <!-- END: EDIT -->

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary"> {ADMIN_POLLS_SEND_BUTTON}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->