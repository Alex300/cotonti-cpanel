<!-- BEGIN: MAIN -->
<div class="button-toolbar">
    <a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="btn btn-default">{PHP.L.Configuration}</a>
    <a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="btn btn-default">{PHP.L.adm_extrafields}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<!-- BEGIN: ADMIN_USERS_DEFAULT -->
<div class="panel panel-default margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Groups}:</h4>
    </div>
    <div class="panel-body">
        <table class="table table-hover table-responsive">
            <thead>
            <tr>
                <th class="width5">&nbsp;</th>
                <th>{PHP.L.Groups}</th>
                <th class="text-center width10">{PHP.L.Members}</th>
                <th class="text-center width10">{PHP.L.Enabled}</th>
                <th class="width20">{PHP.L.Action}</th>
                <th class="text-center width5">ID</th>
            </tr>
            </thead>
            <!-- BEGIN: USERS_ROW -->
            <tr>
                <td class="text-center">
                    <!-- IF {PHP.hidden_groups} AND {ADMIN_USERS_ROW_GRP_HIDDEN} == Yes -->
                    {PHP.R.admin_icon_usergroup0}
                    <!-- ELSE -->
                    {PHP.R.admin_icon_usergroup1}
                    <!-- ENDIF -->
                </td>
                <td>
                    <a href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="ajax strong" title="{PHP.L.Edit}">{ADMIN_USERS_ROW_GRP_NAME}</a>
                    <p class="help-block">{ADMIN_USERS_ROW_GRP_DESC}</p>
                </td>
                <td class="text-center">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
                <td class="text-center">{ADMIN_USERS_ROW_GRP_DISABLED}</td>
                <td>
                    <!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
                    <a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="btn btn-info btn-sm">
                        <span class="fa fa-users"></span> {PHP.L.short_rights}</a>
                    <!-- ENDIF -->
                    <a title="{PHP.L.Open}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" class="btn btn-success btn-sm">
                        <span class="fa fa-folder-open"></span> {PHP.L.short_open}</a>
                </td>
                <td class="text-center">{ADMIN_USERS_ROW_GRP_ID}</td>
            </tr>
            <!-- END: USERS_ROW -->
        </table>
    </div>
</div>


<button id="addGroup" type="button" class="btn btn-primary">
    <span class="fa fa-plus"></span> {PHP.L.Add}
</button>

<div id="addGroupDlg" class="panel panel-default margintop20" style="display: none">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Add}:</h4>
    </div>
    <div class="panel-body">
        {PHP|cot_set_var('labelClass', 'col-md-3')}
        {PHP|cot_set_var('elementClass', 'col-md-9')}
        <form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax form-horizontal">
            <div class="form-group {PHP|cot_formGroupClass('rname')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Name}: *</label>
                <div class="{PHP.elementClass}">
                    {ADMIN_USERS_NGRP_NAME}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rtitle')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Title}: *</label>
                <div class="{PHP.elementClass}">
                    {ADMIN_USERS_NGRP_TITLE}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rdesc')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Description}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_NGRP_DESC}</div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('ricon')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Icon}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_NGRP_ICON}</div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Alias}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_NGRP_ALIAS}</div>
            </div>

            <!-- IF {PHP.pfs_is_active} -->
            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_maxsizesingle}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_NGRP_PFS_MAXFILE}</div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_maxsizeallpfs}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</div>
            </div>
            <!-- IF {PHP|cot_module_active('files')} -->
            <div class="form-group {PHP|cot_formGroupClass('rfiles_perpost')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.files_itemsperpost}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_NGRP_ATTACH_PER_POST}</div>
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <div class="form-group {PHP|cot_formGroupClass('rcopyrightsfrom')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_copyrightsfrom}: *</label>
                <div class="{PHP.elementClass}">
                    {ADMIN_USERS_FORM_SELECTBOX_GROUPS}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_skiprights}:</label>
                <div class="{PHP.elementClass}">
                    <div class="radio">{ADMIN_USERS_NGRP_SKIPRIGHTS}</div>
                </div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Level}:</label>
                <div class="{PHP.elementClass}" style="max-width: 200px">{ADMIN_USERS_NGRP_RLEVEL}</div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Disabled}:</label>
                <div class="{PHP.elementClass}">
                    <div class="radio">{ADMIN_USERS_NGRP_DISABLED}</div>
                </div>
            </div>
            <!-- IF {PHP.hidden_groups} -->
            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Hidden}:</label>
                <div class="{PHP.elementClass}">
                    <div class="radio">{ADMIN_USERS_NGRP_HIDDEN}</div>
                </div>
            </div>
            <!-- ENDIF -->

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_rights_maintenance}:</label>
                <div class="{PHP.elementClass}">
                    <div class="radio">{ADMIN_USERS_NGRP_MAINTENANCE}</div>
                </div>
            </div>

            <div class="form-group">
                <div class="{PHP.elementClass} col-md-offset-3">
                    <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    $('#addGroup').click(function(e){
        $('#addGroupDlg').slideToggle();
    });
    $('select').addClass('form-control');

    if($('.alert-danger').length > 0) $('#addGroupDlg').slideDown();
</script>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
<div class="panel panel-default margintop20">
    {PHP|cot_set_var('labelClass', 'col-md-3')}
    {PHP|cot_set_var('elementClass', 'col-md-9')}
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Group}: {PHP.row.grp_title}</h4>
    </div>
    <div class="panel-body">

        {PHP.L.Members}: <a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a>

        <form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax form-horizontal">
            <div class="form-group {PHP|cot_formGroupClass('rname')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Name}: *</label>
                <div class="{PHP.elementClass}">
                    {ADMIN_USERS_EDITFORM_GRP_NAME}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rtitle')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Title}: *</label>
                <div class="{PHP.elementClass}">
                    {ADMIN_USERS_EDITFORM_GRP_TITLE}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rdesc')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Description}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_DESC}</div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('ricon')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Icon}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_ICON}</div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('ralias')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Alias}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_ALIAS}</div>
            </div>

            <!-- IF {PHP.pfs_is_active} -->
            <div class="form-group {PHP|cot_formGroupClass('rmaxfile')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_maxsizesingle}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rmaxtotal')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_maxsizeallpfs}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</div>
            </div>
            <!-- IF {PHP|cot_module_active('files')} -->
            <div class="form-group {PHP|cot_formGroupClass('rfiles_perpost')}">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.files_itemsperpost}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_ATTACH_PER_POST}</div>
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Disabled}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_DISABLED}</div>
            </div>

            <!-- IF {PHP.hidden_groups} -->
            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Hidden}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</div>
            </div>
            <!-- ENDIF -->

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.Level}:</label>
                <div class="{PHP.elementClass}" style="max-width: 200px">{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_rights_maintenance}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</div>
            </div>

            <div class="form-group">
                <label for="" class="{PHP.labelClass} control-label">{PHP.L.adm_skiprights}:</label>
                <div class="{PHP.elementClass}">{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</div>
            </div>

            <!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
            <div class="form-group">
                <div class="{PHP.elementClass} col-md-offset-3">
                    <a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-sm btn-info">{PHP.L.Rights}</a>
                </div>
            </div>
            <!-- ENDIF -->

            <div class="form-group">
                <div class="{PHP.elementClass} col-md-offset-3">
                    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>

                    <!-- IF {PHP.g} > 5 -->
                    <!-- IF {ADMIN_USERS_EDITFORM_DEL_CONFIRM_URL} -->
                    <a href="{ADMIN_USERS_EDITFORM_DEL_CONFIRM_URL}" class="confirmLink btn btn-danger"><span
                            class="fa fa-trash-o"></span> {PHP.L.Delete}</a>
                    <!-- ELSE -->
                        <!-- TODO: remove after 0.9.19 release -->
                        <a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="btn btn-danger"><span
                                class="fa fa-trash-o"></span> {PHP.L.Delete}</a>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                </div>
            </div>
        </form>
    </div>
</div>
<!-- END: ADMIN_USERS_EDIT -->

<!-- END: MAIN -->