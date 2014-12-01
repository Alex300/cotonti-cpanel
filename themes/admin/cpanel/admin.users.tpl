<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="">
    <a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="btn btn-default">{PHP.L.Configuration}</a>
    <a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="btn btn-default">{PHP.L.adm_extrafields}</a>
</div>

<!-- BEGIN: ADMIN_USERS_DEFAULT -->
<div class="panel panel-inverse margintop20">
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

<div id="addGroupDlg" class="panel panel-inverse margintop20" style="display: none">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.L.Add}:</h4>
    </div>
    <div class="panel-body">
        <form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax form-horizontal">

            <div class="form-group {PHP|cot_formGroupClass('rname')}">
                <label for="" class="col-sm-3 control-label">{PHP.L.Name}: *</label>
                <div class="col-sm-9">
                    {ADMIN_USERS_NGRP_NAME}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rtitle')}">
                <label for="" class="col-sm-3 control-label">{PHP.L.Title}: *</label>
                <div class="col-sm-9">
                    {ADMIN_USERS_NGRP_TITLE}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('rdesc')}">
                <label for="" class="col-sm-3 control-label">{PHP.L.Description}:</label>
                <div class="col-sm-9">{ADMIN_USERS_NGRP_DESC}</div>
            </div>

            <div class="form-group {PHP|cot_formGroupClass('ricon')}">
                <label for="" class="col-sm-3 control-label">{PHP.L.Icon}:</label>
                <div class="col-sm-9">{ADMIN_USERS_NGRP_ICON}</div>
            </div>

            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.Alias}:</label>
                <div class="col-sm-9">{ADMIN_USERS_NGRP_ALIAS}</div>
            </div>

            <!-- IF {PHP.pfs_is_active} -->
            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.adm_maxsizesingle}:</label>
                <div class="col-sm-9">{ADMIN_USERS_NGRP_PFS_MAXFILE}</div>
            </div>

            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.adm_maxsizeallpfs}:</label>
                <div class="col-sm-9">{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</div>
            </div>
            <!-- ENDIF -->
            <div class="form-group {PHP|cot_formGroupClass('rcopyrightsfrom')}">
                <label for="" class="col-sm-3 control-label">{PHP.L.adm_copyrightsfrom}: *</label>
                <div class="col-sm-9">
                    {ADMIN_USERS_FORM_SELECTBOX_GROUPS}
                    <span class="help-block">{PHP.L.adm_required}</span>
                </div>
            </div>

            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.adm_skiprights}:</label>
                <div class="col-sm-9">
                    <div class="radio">{ADMIN_USERS_NGRP_SKIPRIGHTS}</div>
                </div>
            </div>

            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.Level}:</label>
                <div class="col-sm-9">{ADMIN_USERS_NGRP_RLEVEL}</div>
            </div>

            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.Disabled}:</label>
                <div class="col-sm-9">
                    <div class="radio">{ADMIN_USERS_NGRP_DISABLED}</div>
                </div>
            </div>
            <!-- IF {PHP.hidden_groups} -->
            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.Hidden}:</label>
                <div class="col-sm-9">
                    <div class="radio">{ADMIN_USERS_NGRP_HIDDEN}</div>
                </div>
            </div>
            <!-- ENDIF -->

            <div class="form-group">
                <label for="" class="col-sm-3 control-label">{PHP.L.adm_rights_maintenance}:</label>
                <div class="col-sm-9">
                    <div class="radio">{ADMIN_USERS_NGRP_MAINTENANCE}</div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
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
		<div class="block">
			<form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
				<table class="cells">
					<tr>
						<td class="width40">{PHP.L.Name}:</td>
						<td class="width60">{ADMIN_USERS_EDITFORM_GRP_NAME} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Title}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_TITLE} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Description}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DESC}</td>
					</tr>
					<tr>
						<td>{PHP.L.Icon}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ICON}</td>
					</tr>
					<tr>
						<td>{PHP.L.Alias}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ALIAS}</td>
					</tr>
					<!-- IF {PHP.pfs_is_active} -->
					<tr>
						<td>{PHP.L.adm_maxsizesingle}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_maxsizeallpfs}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Disabled}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DISABLED}</td>
					</tr>
					<!-- IF {PHP.hidden_groups} -->
					<tr>
						<td>{PHP.L.Hidden}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Level}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</td>
					</tr>
					<tr>
						<td>{PHP.L.Members}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a></td>
					</tr>
					<tr>
						<td>{PHP.L.adm_rights_maintenance}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_skiprights}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</td>
					</tr>
					<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
					<tr>
						<td>{PHP.L.Rights}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="button">{PHP.L.Rights}</a></td>
					</tr>
					<!-- ENDIF -->
<!-- IF {PHP.g} > 5 -->
					<tr>
						<td>{PHP.L.Delete}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="ajax">{PHP.R.admin_icon_delete}</a></td>
					</tr>
<!-- ENDIF -->
					<tr>
						<td class="valid" colspan="2"><input type="submit" class="submit" value="{PHP.L.Update}" /></td>
					</tr>
				</table>
			</form>
		</div>
<!-- END: ADMIN_USERS_EDIT -->

<!-- END: MAIN -->