<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<!-- BEGIN: DETAILS -->
<h2>
    <!-- IF {ADMIN_EXTENSIONS_ICO} -->
    <img src="{ADMIN_EXTENSIONS_ICO}" />
    <!-- ELSE -->
    <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
    <!-- ENDIF -->{ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}:
</h2>

<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-body">
                <table class="table table-condensed">
                    <tr>
                        <td class="width25">{PHP.L.Code}:</td>
                        <td class="width75">{ADMIN_EXTENSIONS_CODE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Description}:</td>
                        <td>{ADMIN_EXTENSIONS_DESCRIPTION}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Version}:</td>
                        <td>
                            <!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
                            <span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="text-success">{ADMIN_EXTENSIONS_VERSION}</span>
                            <!-- ELSE -->
                            {ADMIN_EXTENSIONS_VERSION}
                            <!-- ENDIF -->
                        </td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Date}:</td>
                        <td>{ADMIN_EXTENSIONS_DATE}</td>
                    </tr>
                    <!--//<tr>
                        <td>{PHP.L.adm_defauth_guests}:</td>
                        <td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_GUESTS} ({ADMIN_EXTENSIONS_AUTH_GUESTS})</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_deflock_guests}:</td>
                        <td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_GUESTS} ({ADMIN_EXTENSIONS_LOCK_GUESTS})</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_defauth_members}:</td>
                        <td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_MEMBERS} ({ADMIN_EXTENSIONS_AUTH_MEMBERS})</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_deflock_members}:</td>
                        <td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_MEMBERS} ({ADMIN_EXTENSIONS_LOCK_MEMBERS})</td>
                    </tr>//-->
                    <tr>
                        <td>{PHP.L.Author}:</td>
                        <td>{ADMIN_EXTENSIONS_AUTHOR}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Copyright}:</td>
                        <td>{ADMIN_EXTENSIONS_COPYRIGHT}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Notes}:</td>
                        <td>{ADMIN_EXTENSIONS_NOTES}</td>
                    </tr>
                    <!-- BEGIN: DEPENDENCIES -->
                    <tr>
                        <td>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
                        <td>
                            <ul class="list-unstyled">
                                <!-- BEGIN: DEPENDENCIES_ROW -->
                                <li>
                                    <a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>
                                </li>
                                <!-- END: DEPENDENCIES_ROW -->
                            </ul>
                        </td>
                    </tr>
                    <!-- END: DEPENDENCIES -->
                </table>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-md-6">

        <div class="row">
            <!-- IF {PHP.isinstalled} AND {PHP.exists} -->
            <div class="panel panel-default margintop20">
                <div class="panel-heading">
                    <h4 class="panel-title">{PHP.L.Action}:</h4>
                </div>
                <div class="panel-body">
                    <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
                    <a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-info marginbottom10">
                        <span class="fa fa-folder-open"></span> {PHP.L.Open}</a>
                    <!-- ENDIF -->
                    <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
                    <a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-success marginbottom10">
                        <span class="fa fa-cogs"></span> {PHP.L.Administration}</a>
                    <!-- ENDIF -->
                    <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
                    <a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="btn btn-info marginbottom10">
                        <span class="fa fa-wrench"></span> {PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
                    <!-- ENDIF -->
                    <a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="btn btn-info marginbottom10">
                        <span class="fa fa-users"></span> {PHP.L.short_rights}</a>
                    <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
                    <a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-info marginbottom10">
                        <span class="fa fa-sitemap"></span> {PHP.L.Structure}</a>
                    <!-- ENDIF -->
                </div>
            </div>
            <!-- ENDIF -->

            <div class="panel panel-default margintop20">
                <div class="panel-heading">
                    <h4 class="panel-title">{PHP.L.Options}:</h4>
                </div>
                <div class="panel-body">
                    <!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
                    <a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="btn btn-success marginbottom10"
                       data-toggle="tooltip"><span class="fa fa-check"></span> {PHP.L.adm_opt_install}</a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.isinstalled} -->
                    <!-- IF {PHP.exists} -->
                    <a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="btn btn-success marginbottom10"
                       data-toggle="tooltip"><span class="fa fa-refresh"></span> {PHP.L.adm_opt_update}</a>
                    <!-- ENDIF -->

                    <a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="btn btn-danger marginbottom10"
                       data-toggle="tooltip"><span class="fa fa-trash-o"></span> {PHP.L.adm_opt_uninstall}</a>

                    <a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="btn btn-warning marginbottom10"
                       data-toggle="tooltip"><span class="fa fa-pause"></span> {PHP.L.adm_opt_pauseall}</a>

                    <!-- IF {PHP.exists} -->
                    <a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="btn btn-info marginbottom10"
                       data-toggle="tooltip"><span class="fa fa-play"></span> {PHP.L.adm_opt_unpauseall}</a>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                </div>
            </div>

        </div>
    </div>
</div>


<div class="row">
    <div class="col-xs-12">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.Parts}:</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="width5">#</th>
                            <th class="width20">{PHP.L.Part}</th>
                            <th class="width20">{PHP.L.File}</th>
                            <th class="width15">{PHP.L.Hooks}</th>
                            <th class="width10 text-center">{PHP.L.Order}</th>
                            <th class="width15">{PHP.L.Status}</th>
                            <th class="width15">{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ROW_ERROR_PART -->
                    <tr class="danger">
                        <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                        <td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                        <td class="text-danger word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
                        <td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
                        <td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
                    </tr>
                    <!-- END: ROW_ERROR_PART -->
                    <!-- BEGIN: ROW_PART -->
                    <tr class="<!-- IF {PHP.info_file.Status} == 0 -->info<!-- ENDIF --><!-- IF {PHP.info_file.Status} == 3 -->warning<!-- ENDIF -->">
                        <td class="">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                        <td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                        <td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
                        <td class="word-break">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
                        <td class="text-center">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
                        <td class="">{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
                        <td class="">
                            <!-- BEGIN: ROW_PART_NOTINSTALLED -->
                            &ndash;
                            <!-- END: ROW_PART_NOTINSTALLED -->
                            <!-- BEGIN: ROW_PART_PAUSE -->
                            <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn btn-warning btn-sm">
                                <span class="fa fa-pause"></span> {PHP.L.adm_opt_pause}</a>
                            <!-- END: ROW_PART_PAUSE -->
                            <!-- BEGIN: ROW_PART_UNPAUSE -->
                            <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn btn-info btn-sm">
                                <span class="fa fa-play"></span> {PHP.L.adm_opt_unpause}</a>
                            <!-- END: ROW_PART_UNPAUSE -->
                        </td>
                    </tr>
                    <!-- END: ROW_PART -->
                </table>
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.Tags}:</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="width5">#</th>
                            <th class="width25">{PHP.L.Part}</th>
                            <th class="width70">{PHP.L.Files} / {PHP.L.Tags}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ROW_ERROR_TAGS -->
                    <tr>
                        <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                        <td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                        <td>{PHP.L.None}</td>
                    </tr>
                    <!-- END: ROW_ERROR_TAGS -->
                    <!-- BEGIN: ROW_TAGS -->
                    <tr>
                        <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                        <td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                        <td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
                    </tr>
                    <!-- END: ROW_TAGS -->
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
	<h2>{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h2>
	<table class="cells">
		<tr>
			<td class="coltop width40">{PHP.L.Hooks}</td>
			<td class="coltop width20">{PHP.L.Plugin}</td>
			<td class="coltop width20">{PHP.L.Order}</td>
			<td class="coltop width20">{PHP.L.Active}</td>
		</tr>
<!-- BEGIN: HOOKS_ROW -->
		<tr>
			<td>{ADMIN_EXTENSIONS_HOOK}</td>
			<td>{ADMIN_EXTENSIONS_CODE}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_ORDER}</td>
			<td class="centerall">{ADMIN_EXTENSIONS_ACTIVE}</td>
		</tr>
<!-- END: HOOKS_ROW -->
	</table>
<!-- END: HOOKS -->

<!-- BEGIN: DEFAULT -->
<div class="">
	<a class="button btn <!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->btn-success<!-- ELSE -->btn-default<!-- ENDIF -->"
       href="{ADMIN_EXTENSIONS_SORT_ALP_URL}">{PHP.L.adm_sort_alphabet}</a>
	<a class="button btn <!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->btn-success<!-- ELSE -->btn-default<!-- ENDIF -->"
       href="{ADMIN_EXTENSIONS_SORT_CAT_URL}">{PHP.L.adm_sort_category}</a>
	<a class="button btn <!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->btn-success<!-- ELSE -->btn-default<!-- ENDIF -->"
       href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}">{PHP.L.adm_only_installed}</a>
	<a href="{ADMIN_EXTENSIONS_HOOKS_URL}" class="button btn btn-default">{PHP.L.Hooks}</a>
</div>

<!-- BEGIN: SECTION-->
<div class="panel panel-default margintop20">
    <div class="panel-heading">
        <h4 class="panel-title">{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h4>
    </div>
    <div class="panel-body">

		<table class="table table-hover">
            <thead>
                <tr>
                    <th class="width5">&nbsp;</th>
                    <th>{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
                    <th class="width5">{PHP.L.Code}</th>
                    <th class="width5">{PHP.L.Version}</th>
                    <th class="width5 text-center">{PHP.L.Parts}</th>
                    <th class="width10">{PHP.L.Status}</th>
                    <th class="width30">{PHP.L.Action}</th>
                </tr>
            <thead>
            <!-- BEGIN: ROW -->
            <!-- BEGIN: ROW_CAT -->
			<tr>
				<td colspan="7">
					<h4>{ADMIN_EXTENSIONS_CAT_TITLE}</h4>
				</td>
			</tr>
            <!-- END: ROW_CAT -->
            <!-- BEGIN: ROW_ERROR_EXT -->
			<tr>
				<td>{ADMIN_EXTENSIONS_X_ERR}</td>
				<td colspan="5">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
			</tr>
            <!-- END: ROW_ERROR_EXT -->
			<tr>
				<td>
					<!-- IF {ADMIN_EXTENSIONS_ICO} -->
					<img src="{ADMIN_EXTENSIONS_ICO}" />
					<!-- ELSE -->
					<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
					<!-- ENDIF -->
				</td>
				<td>
					<a href="{ADMIN_EXTENSIONS_DETAILS_URL}"><strong>{ADMIN_EXTENSIONS_NAME}</strong></a>
					<p class="help-block">{ADMIN_EXTENSIONS_DESCRIPTION|cot_string_truncate($this,150,1,0,'...')}</p>
				</td>
				<td class="">{ADMIN_EXTENSIONS_CODE_X}</td>
				<td class="centerall">
					<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
					<span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="text-success">{ADMIN_EXTENSIONS_VERSION}</span>
					<!-- ELSE -->
					{ADMIN_EXTENSIONS_VERSION}
					<!-- ENDIF -->
				</td>
				<td class="text-center">{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_STATUS}</td>
				<td class="action">
                    <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
					<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn btn-info btn-sm marginbottom10">
                        <span class="fa fa-wrench"></span> {PHP.L.short_config}</a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.ifstruct} -->
					<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-info btn-sm marginbottom10">
                        <span class="fa fa-sitemap"></span> {PHP.L.short_struct}</a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.totalinstalled} -->
					<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-info btn-sm marginbottom10">
                        <span class="fa fa-users"></span> {PHP.L.short_rights}</a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.ifthistools} -->
					<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-success btn-sm marginbottom10">
                        <span class="fa fa-cogs"></span> {PHP.L.short_admin}</a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.if_plg_standalone} -->
					<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-success btn-sm marginbottom10">
                        <span class="fa fa-folder-open"></span> {PHP.L.Open}</a>
                    <!-- ENDIF -->
				</td>
			</tr>
            <!-- END: ROW -->
            <!-- BEGIN: ROW_ERROR -->
			<tr>
				<td>{ADMIN_EXTENSIONS_X}</td>
				<td colspan="5">{PHP.L.adm_opt_setup_missing}</td>
			</tr>
            <!-- END: ROW_ERROR -->
		</table>
	</div>
</div>
<!-- END: SECTION -->
<!-- END: DEFAULT -->

<!-- END: MAIN -->