<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post"
	  class="ajax form-inline">
	{ADMIN_RIGHTSBYITEM_FORM_ITEMS}
	<table class="table">
		<tr>
			<td class="width5" rowspan="2"></td>
			<td class="strong width25" rowspan="2" style="vertical-align: middle">{PHP.L.Groups}</td>
			<td class="strong text-center width40" colspan="{ADMIN_RIGHTSBYITEM_ADV_COLUMNS}">{PHP.L.Rights}</td>
			<td class="strong text-center width15" style="vertical-align: middle" rowspan="2">{PHP.L.Open}</td>
			<td class="strong text-center width15" style="vertical-align: middle" rowspan="2">{PHP.L.adm_setby}</td>
		</tr>
		<tr>
			<td class="text-center">{PHP.R.admin_icon_auth_r}</td>
			<td class="text-center">{PHP.R.admin_icon_auth_w}</td>
			<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
			<td class="text-center">{PHP.R.admin_icon_auth_1}</td>
			<!-- ENDIF -->
			<!-- IF {PHP.advanced} -->
			<td class="text-center">{PHP.R.admin_icon_auth_2}</td>
			<td class="text-center">{PHP.R.admin_icon_auth_3}</td>
			<td class="text-center">{PHP.R.admin_icon_auth_4}</td>
			<td class="text-center">{PHP.R.admin_icon_auth_5}</td>
			<!-- ENDIF -->
			<td class="text-center">{PHP.R.admin_icon_auth_a}</td>
		</tr>
		<!-- BEGIN: RIGHTSBYITEM_ROW -->
		<tr>
			<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/users.png"/></td>
			<td><a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
			<!-- BEGIN: ROW_ITEMS -->
			<td class="text-center">
				<!-- IF {ADMIN_RIGHTSBYITEM_ROW_ITEMS_LOCKED} AND {ADMIN_RIGHTSBYITEM_ROW_ITEMS_STATEe} -->
				<input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" /> {PHP.R.admin_icon_discheck1}
				<!-- ENDIF -->
				<!-- IF {ADMIN_RIGHTSBYITEM_ROW_ITEMS_LOCKED} AND !{ADMIN_RIGHTSBYITEM_ROW_ITEMS_STATE} -->
					{PHP.R.admin_icon_discheck0}
				<!-- ENDIF -->
				<!-- IF !{ADMIN_RIGHTSBYITEM_ROW_ITEMS_LOCKED} -->
				<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} />
				<!-- ENDIF -->
			</td>
			<!-- END: ROW_ITEMS -->
			<td class="text-center">
				<a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}" class="btn btn-primary"><span
						class="fa fa-users"></span> {PHP.L.Open}</a>
				<a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}" class="btn btn-info"><span class="fa fa-shield"></span>
					{PHP.L.Rights}</a>
			</td>
			<td class="text-center">{ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}</td>
		</tr>
		<!-- END: RIGHTSBYITEM_ROW -->
	</table>

	<div style="text-align:center">
		<!-- IF {PHP.advanced} == 1 -->

		<!-- ELSE -->
		<a href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}">{PHP.L.More}</a>
		<!-- ENDIF -->
		<br /> <br />
		<button type="submit" class="btn btn-primary"><span class="fa fa-floppy-o"></span> {PHP.L.Update}</button>
	</div>
</form>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTSBYITEM_HELP -->
<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' --><p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.l_custom1}</p><!-- ENDIF -->
<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTSBYITEM_HELP -->