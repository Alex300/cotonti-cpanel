<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}
<div class="button-toolbar">
	<a href="{ADMIN_PAGE_URL_CONFIG}" class="btn btn-default" title="{PHP.L.Configuration}"
	   data-toggle="tooltip"><span class="fa fa-wrench"></span> {PHP.L.Configuration}</a>
	<a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="btn btn-default" title="{PHP.L.adm_extrafields_desc}"
	   data-toggle="tooltip"><span class="fa fa-check-square-o"></span> {PHP.L.adm_extrafields}</a>
	<a href="{ADMIN_PAGE_URL_STRUCTURE}" class="btn btn-default"><span class="fa fa-sitemap"></span> {PHP.L.Categories}</a>
	<a href="{ADMIN_PAGE_URL_ADD}" class="btn btn-default btn-primary"><span class="fa fa-plus"></span> {PHP.L.page_addtitle}</a>
</div>

<div class="panel panel-default margintop20">
	<div class="panel-heading">
		<h4 class="panel-title">{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h4>
	</div>
	<div class="panel-body">
		<!-- IF {ADMIN_PAGE_TOTALDBPAGES} -->
		<div class="button-toolbar block">
			<form name="form_valqueue" method="GET" action="{PHP|cot_url('admin', 'm=page')}">
				<!-- IF !{PHP|cot_plugin_active('urleditor')} OR {PHP.cfg.plugin.urleditor.preset} != 'handy' -->
				<input type="hidden" name="m" value="page" />
				<!-- ENDIF -->
				<div class="form-inline">
					<div class="form-group">
						<label>{PHP.L.Show}:</label> {ADMIN_PAGE_FILTER}
					</div>

					<!-- IF {TOTAL_ENTRIES} > 1 -->
					<div class="form-group marginleft10">
						<label>{PHP.L.adm_sort}</label> {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}
					</div>
					<!-- ENDIF -->

					<button type="submit" class="btn btn-default"><span class="fa fa-filter"></span> {PHP.L.Filter}</button>
				</div>
			</form>
		</div>
		<!-- ENDIF -->
		<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
			<table class="table margintop20">
				<thead>
					<tr>
						<th class="coltop width5">
							<!-- IF {PHP.cfg.jquery} -->
							<input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
							<!-- ENDIF -->
						</th>
						<th class="width5">{PHP.L.Id}</th>
						<th class="width10">{PHP.L.Status}</th>
						<th class="">{PHP.L.Title}</th>
						<th class="width20">{PHP.L.Action}</th>
					</tr>
				<thead>
				<!-- BEGIN: PAGE_ROW -->
				<tr>
					<td class="centerall {ADMIN_PAGE_ODDEVEN}">
						<input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
					</td>
					<td class="centerall {ADMIN_PAGE_ODDEVEN}">
						{ADMIN_PAGE_ID}
					</td>
					<td>
						<!-- IF {ADMIN_PAGE_STATUS} === 'published' -->
						<span class="text-success">{ADMIN_PAGE_LOCAL_STATUS}</span>
						<!-- ELSE -->
						{ADMIN_PAGE_LOCAL_STATUS}
						<!-- ENDIF -->
					</td>
					<td class="{ADMIN_PAGE_ODDEVEN}">
						<div id="mor_{PHP.ii}" class="mor_info_on_off" style="max-width: 955px; overflow-x: scroll">
							<span class="strong" style="cursor:pointer;">{ADMIN_PAGE_TITLE} <span class="caret"></span></span>
							<!-- IF {ADMIN_PAGE_DESCRIPTION} -->
							<div>{ADMIN_PAGE_DESCRIPTION}</div>
							<!-- ENDIF -->
							<div class="moreinfo">
								<hr class="margintop10 marginbottom10" />

								<strong>{PHP.L.Category}:</strong> {ADMIN_PAGE_CAT_PATH_SHORT}
								<!-- IF {ADMIN_PAGE_TEXT} -->
								<div class="margintop10">
									<strong>{PHP.L.Text}:</strong>
									<div>{ADMIN_PAGE_TEXT}</div>
								</div>
								<!-- ENDIF -->
							</div>
						</div>
					</td>
					<td class="action {ADMIN_PAGE_ODDEVEN}">
						<!-- IF {PHP.row.page_state} == 1 -->
						<a href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="confirmLink btn btn-info" title="{PHP.L.Validate}"
								data-toggle="tooltip"><span class="fa fa-check-circle-o"></span> {PHP.L.Validate}</a>
						<!-- ENDIF -->
						<a href="{ADMIN_PAGE_ID_URL}" target="_blank" class="button btn btn-default" title="{PHP.L.Open}"
						   data-toggle="tooltip"><span class="fa fa-folder-open-o"></span></a>

						<a href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="btn btn-primary" title="{PHP.L.Edit}"
						   data-toggle="tooltip"><span class="fa fa-edit"></span></a>

						<a href="{ADMIN_PAGE_URL_FOR_DELETED}" class="confirmLink btn btn-danger" title="{PHP.L.Delete}"
						   data-toggle="tooltip"><span class="fa fa-trash-o"></span></a>
					</td>
				</tr>
				<!-- END: PAGE_ROW -->
				<!-- IF !{TOTAL_ENTRIES} -->
				<tr>
					<td class="text-center" colspan="5"><h4 class="help-block">{PHP.L.None}</h4></td>
				</tr>
				<!-- ELSE -->
				<tr>
					<td colspan="5">
						<!-- IF {PHP.filter} != {PHP.L.adm_validated} -->
						<button name="paction" type="submit" value="validate" class="btn btn-info confirm">
							<span class="fa fa-check-circle-o"></span> {PHP.L.Validate}</button>
						<!-- ENDIF -->

						<button name="paction" type="submit" value="delete" class="btn btn-danger confirm">
							<span class="fa fa-trash-o"></span> {PHP.L.Delete}</button>
					</td>
				</tr>
				<!-- ENDIF -->
			</table>
		</form>

		<!-- IF {TOTAL_ENTRIES} -->
		<div class="text-right">
			<nav>
				<ul class="pagination" style="margin-bottom: 0">
					{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
				</ul>
			</nav>
			<span class="help-block">{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span>
		</div>
		<!-- ENDIF -->
	</div>
</div>
<script type="text/javascript">
	$('.moreinfo').hide();
	$('.mor_info_on_off').click(function() {
		let kk = $(this).attr('id');
		$('#' + kk).children('.moreinfo').slideToggle(100);
	});

	let submitButtons = document.querySelectorAll('.confirm');
	let form = document.getElementById('form_valqueue');
	submitButtons.forEach(function(elem) {
		elem.addEventListener('click', function(e) {
			let checkedCnt = form.querySelectorAll('input[type=checkbox]:checked').length;
			if (checkedCnt < 1) {
				e.preventDefault();
				return false;
			}

			let message = 'Are you sure?';
			switch (this.value) {
				case 'delete':
					message = '{PHP.L.page_confirm_delete}';
					break;

				case 'validate':
					message = '{PHP.L.page_confirm_validate}';
					break;
			}

			if (!confirm(message)) {
				e.preventDefault();
			}
		});
	});
</script>
<!-- END: MAIN -->