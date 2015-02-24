<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax form-inline">
	<!-- IF {PHP.g} > 5 -->
	<div class="marginbottom10">
		<div class="checkbox">
			<label>
				<input type="checkbox" class="checkbox" name="ncopyrightsconf" /> {PHP.L.adm_copyrightsfrom}:
			</label>
		</div>
		{ADMIN_RIGHTS_SELECTBOX_GROUPS}
		<button type="submit" class="btn btn-default">{PHP.L.Update}</button>
	</div>
	<!-- ENDIF -->

	<!-- BEGIN: RIGHTS_SECTION -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">{RIGHTS_SECTION_TITLE}:</h4>
		</div>
		<div class="panel-body">
			<table class="table">
				<tr>
					<td class="width5" rowspan="2"></td>
					<td class="strong width25" rowspan="2" style="vertical-align: middle">{PHP.L.Section}</td>
					<td class="strong text-center width40" colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{PHP.L.Rights}</td>
					<td class="strong text-center width15" rowspan="2" style="vertical-align: middle">{PHP.L.adm_rightspergroup}</td>
					<td class="strong text-center width15" rowspan="2" style="vertical-align: middle">{PHP.L.adm_setby}</td>
				</tr>
				<tr>
					<td class="text-center">{PHP.R.admin_icon_auth_r}</td>
					<td class="text-center">{PHP.R.admin_icon_auth_w}</td>
					<td class="text-center">{PHP.R.admin_icon_auth_1}</td>
					<!-- IF {PHP.advanced} -->
					<td class="text-center">{PHP.R.admin_icon_auth_2}</td>
					<td class="text-center">{PHP.R.admin_icon_auth_3}</td>
					<td class="text-center">{PHP.R.admin_icon_auth_4}</td>
					<td class="text-center">{PHP.R.admin_icon_auth_5}</td>
					<!-- ENDIF -->
					<td class="text-center">{PHP.R.admin_icon_auth_a}</td>
				</tr>
				<!-- BEGIN: RIGHTS_ROW -->
				<tr>
					<td class="">
						<!-- IF {ADMIN_RIGHTS_ROW_ICO} -->
						<img src="{ADMIN_RIGHTS_ROW_ICO}"/>
						<!-- ELSE -->
						<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
						<!-- ENDIF -->
					</td>
					<td><a href="{ADMIN_RIGHTS_ROW_LINK}">{ADMIN_RIGHTS_ROW_TITLE}</a></td>
					<!-- BEGIN: RIGHTS_ROW_ITEMS -->
					<td class="text-center">
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
						<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
						{PHP.R.admin_icon_discheck1}
						<!-- ENDIF -->
						<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
						{PHP.R.admin_icon_discheck0}
						<!-- ENDIF -->
						<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
						<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
						<!-- ENDIF -->
					</td>
					<!-- END: RIGHTS_ROW_ITEMS -->
					<td class="text-center">
						<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" class="btn btn-info"><span class="fa fa-shield"></span>
							{PHP.L.Rights}</a>
						<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_LINK}" class="btn btn-primary"><span class="fa fa-folder-open-o"></span>
							{PHP.L.Open}</a>
					</td>
					<td class="text-center">{ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</td>
				</tr>
				<!-- END: RIGHTS_ROW -->
			</table>
		</div>
	</div>
	<!-- END: RIGHTS_SECTION -->

	<div style="text-align:center">
		<!-- IF {PHP.advanced} == 1 -->
		<a href="{PHP.g|cot_url('admin', 'm=rights&g=$this')}">{PHP.L.cpanel_less_options}...</a>
		<!-- ELSE -->
		<a href="{ADMIN_RIGHTS_ADVANCED_URL}">{PHP.L.More}</a>
		<!-- ENDIF -->
		<br /> <br />
		<button type="submit" class="btn btn-primary"><span class="fa fa-floppy-o"></span> {PHP.L.Update}</button>
	</div>
</form>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTS_HELP -->
<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTS_HELP -->