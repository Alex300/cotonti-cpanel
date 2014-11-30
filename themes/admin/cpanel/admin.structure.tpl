<!-- BEGIN: LIST -->
<div class="panel panel-inverse">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Modules}</h4>
    </div>
    <div class="panel-body">
        <!-- BEGIN: ADMIN_STRUCTURE_EXT -->
        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 margintop10 marginbottom10">
            <a href="{ADMIN_STRUCTURE_EXT_URL}" class="thumbicons">
                <!-- IF {ADMIN_STRUCTURE_EXT_ICO} -->
                <img src="{ADMIN_STRUCTURE_EXT_ICO}"/>
                <!-- ELSE -->
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
                <!-- ENDIF -->
                {ADMIN_STRUCTURE_EXT_NAME}
            </a>
        </div>
        <!-- END: ADMIN_STRUCTURE_EXT -->
        <!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
        <div class="well">{PHP.L.adm_listisempty}</div>
        <!-- END: ADMIN_STRUCTURE_EMPTY -->
    </div>
</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="">
    <a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-default">{PHP.L.adm_extrafields}</a>
    <a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax btn btn-default" title="{PHP.L.adm_tpl_resyncalltitle}"
            data-toggle="tooltip">{PHP.L.Resync}</a>
    <!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
    <a href="{ADMIN_STRUCTURE_I18N_URL}" class="btn btn-default">{PHP.L.i18n_structure}</a>
    <!-- ENDIF -->
</div>

<!-- BEGIN: OPTIONS -->
<div class="block">
    <form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
    <table class="cells">
        <tr>
            <td class="width20">{PHP.L.Path}:</td>
            <td class="width80">{ADMIN_STRUCTURE_PATH}</td>
        </tr>
        <tr>
            <td>{PHP.L.Code}:</td>
            <td>{ADMIN_STRUCTURE_CODE}</td>
        </tr>
        <tr>
            <td>{PHP.L.Title}:</td>
            <td>{ADMIN_STRUCTURE_TITLE}</td>
        </tr>
        <tr>
            <td>{PHP.L.Description}:</td>
            <td>{ADMIN_STRUCTURE_DESC}</td>
        </tr>
        <tr>
            <td>{PHP.L.Icon}:</td>
            <td>{ADMIN_STRUCTURE_ICON}</td>
        </tr>
        <tr>
            <td>{PHP.L.Locked}:</td>
            <td>{ADMIN_STRUCTURE_LOCKED}</td>
        </tr>
        <tr>
            <td>{PHP.L.adm_tpl_mode}:</td>
            <td>
                {ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}<br />
                {PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}
            </td>
        </tr>
        <!-- BEGIN: EXTRAFLD -->
        <tr>
            <td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
            <td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
        </tr>
        <!-- END: EXTRAFLD -->
    </table>
        <!-- BEGIN: CONFIG -->
        <h2>{PHP.L.Configuration}</h2>{CONFIG_HIDDEN}
        {ADMIN_CONFIG_EDIT_CUSTOM}

        <table class="cells">
            <tr>
                <td class="coltop width35">{PHP.L.Parameter}</td>
                <td class="coltop width60">{PHP.L.Value}</td>
                <td class="coltop width5">{PHP.L.Reset}</td>
            </tr>
        <!-- BEGIN: ADMIN_CONFIG_ROW -->
            <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
            <tr>
                <td class="group_begin" colspan="3">
                    <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                </td>
            </tr>
            <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
            <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
            <tr>
                <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
                <td>
                    {ADMIN_CONFIG_ROW_CONFIG}
                    <div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                </td>
                <td class="centerall">
                    <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax button">
                        {PHP.L.Reset}
                    </a>
                </td>
            </tr>
            <!-- END: ADMIN_CONFIG_ROW_OPTION -->
        <!-- END: ADMIN_CONFIG_ROW -->
        </table>

<!-- END: CONFIG -->
    <table class="cells">
        <tr>
            <td class="valid" colspan="2"><input type="submit" class="submit" value="{PHP.L.Update}" /></td>
        </tr>
    </table>
    </form>
</div>
<!-- END: OPTIONS -->

<!-- BEGIN: DEFAULT -->
<div class="panel panel-inverse margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.editdeleteentries}</h4>
    </div>
    <div class="panel-body">
        <form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
        <table class="table table-striped">
            <thead>
                <tr>
                    <th class="coltop width10">{PHP.L.Path}</th>
                    <th class="coltop width15">{PHP.L.Code}</th>
                    <th class="coltop width30">{PHP.L.Title}</th>
                    <th class="coltop width10">{PHP.L.TPL}</th>
                    <th class="coltop width5">{PHP.L.Pages}</th>
                    <th class="coltop width30">{PHP.L.Action}</th>
                </tr>
            <thead>
            <!-- BEGIN: ROW -->
            <tr>
                <td>{ADMIN_STRUCTURE_SPACEIMG}{ADMIN_STRUCTURE_PATH}</td>
                <td class="text-center">{ADMIN_STRUCTURE_CODE}</td>
                <td>{ADMIN_STRUCTURE_TITLE}</td>
                <td class="text-center">{ADMIN_STRUCTURE_TPLQUICK}</td>
                <td class="text-center">{ADMIN_STRUCTURE_COUNT}</td>
                <td>
                    <a title="{PHP.L.Options}" href="{ADMIN_STRUCTURE_OPTIONS_URL}" class="ajax btn btn-info btn-sm"
                            data-toggle="tooltip"><span class="fa fa-wrench"></span> {PHP.L.short_config}</a>
                    <!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} -->
                    <a title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="btn btn-info btn-sm"><span class="fa fa-users"></span>
                        {PHP.L.short_rights}</a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.dozvil} -->
                    <a title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" class="confirmLink btn btn-danger
                        btn-sm"><span class="fa fa-trash-o"></span> {PHP.L.short_delete}</a>
                    <!-- ENDIF -->
                    <a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.Pages}" class="button btn btn-success btn-sm">
                        <span class="fa fa-folder-open"></span> {PHP.L.short_open}</a>
                </td>
            </tr>
            <!-- END: ROW -->
            <tr>
                <td colspan="8">
                    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                </td>
            </tr>
        </table>
        </form>

        <!-- IF {ADMIN_STRUCTURE_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin-bottom: 0">
                    {ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</span>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: DEFAULT -->

<!-- BEGIN: NEWCAT -->
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addstructureModal">
    <span class="fa fa-plus"></span> {PHP.L.Add}
</button>

<!-- Modal -->
<div class="modal fade" id="addstructureModal" tabindex="-1" role="dialog" aria-labelledby="addstructureModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="addstructureModalLabel">{PHP.L.Add}</h4>
            </div>
            <form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post"
                  class="ajax form-horizontal" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group {PHP|cot_formGroupClass('rstructurepath')}">
                        <label for="" class="col-sm-2 control-label">{PHP.L.Path} *</label>
                        <div class="col-sm-10">
                            {ADMIN_STRUCTURE_PATH}
                            <span class="help-block">{PHP.L.adm_required}</span>
                        </div>
                    </div>

                    <div class="form-group {PHP|cot_formGroupClass('rstructurecode')}">
                        <label for="" class="col-sm-2 control-label">{PHP.L.Code} *</label>
                        <div class="col-sm-10">
                            {ADMIN_STRUCTURE_CODE}
                            <span class="help-block">{PHP.L.adm_required}</span>
                        </div>
                    </div>

                    <div class="form-group {PHP|cot_formGroupClass('rstructuretitle')}">
                        <label for="" class="col-sm-2 control-label">{PHP.L.Title} *</label>
                        <div class="col-sm-10">
                            {ADMIN_STRUCTURE_TITLE}
                            <span class="help-block">{PHP.L.adm_required}</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">{PHP.L.Description}</label>
                        <div class="col-sm-10">{ADMIN_STRUCTURE_DESC}</div>
                    </div>

                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">{PHP.L.Icon}</label>
                        <div class="col-sm-10">{ADMIN_STRUCTURE_ICON}</div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">{PHP.L.Locked}</label>
                        <div class="col-sm-10">
                            <div class="checkbox">{ADMIN_STRUCTURE_LOCKED}</div>
                        </div>
                    </div>

                    <!-- BEGIN: EXTRAFLD -->
                    <div class="form-group">
                        <label class="col-sm-2 control-label">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}</label>
                        <div class="col-sm-10">{ADMIN_STRUCTURE_EXTRAFLD}</div>
                    </div>
                    <!-- END: EXTRAFLD -->

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-times-circle"></span>
                        {PHP.L.Close}</button>
                    <button id="addstructureSubmit" type="submit"  class="btn btn-primary"><span class="fa fa-check"></span> {PHP.L.Add}</button>
                </div>
            </form>

        </div>
    </div>
</div>
<script>
    $('#addstructureSubmit').click(function(){
        $('#addstructureModal').modal('hide');
        $('body').removeClass('modal-open');
    });
</script>
<!-- END: NEWCAT -->
<!-- END: MAIN -->