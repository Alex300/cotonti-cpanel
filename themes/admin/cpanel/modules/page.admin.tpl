<!-- BEGIN: MAIN -->
<script type="text/javascript">
$(document).ready(function()
{
	$('.moreinfo').hide();
	$(".mor_info_on_off").click(function()
	{
		var kk = $(this).attr('id');
		$('#'+kk).children('.moreinfo').slideToggle(100);
	});
});
</script>
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
		<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
			<input type="hidden" name="paction" value="" />
			<div class="form-inline">
				<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->
				<div class="form-group">
					<label>{PHP.L.adm_sort}</label> {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}
				</div>
				<!-- ENDIF -->
				<div class="form-group marginleft10">
					<label>{PHP.L.Show}:</label> {ADMIN_PAGE_FILTER}
				</div>

				<button name="paction" value="{PHP.L.Filter}" type="submit" class="btn btn-default" onclick="this.form.paction.value='{PHP.L.Filter}'">
					<span class="fa fa-filter"></span> {PHP.L.Filter}
				</button>
			</div>

			<table class="table margintop20">
				<thead>
					<tr>
						<th class="coltop width5">
							<!-- IF {PHP.cfg.jquery} -->
							<input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
							<!-- ENDIF -->
						</th>
						<th class="width5">{PHP.L.Id}</th>
						<th class="">{PHP.L.Title}</th>
						<th class=" width20">{PHP.L.Action}</th>
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
					<td class="{ADMIN_PAGE_ODDEVEN}">
						<div id="mor_{PHP.ii}" class='mor_info_on_off'>
							<span class="strong" style="cursor:pointer;">{ADMIN_PAGE_SHORTTITLE} <span class="caret"></span></span>
							<div class="moreinfo">
								<hr class="margintop10 marginbottom10" />
								<table class="table-flat">
									<tr>
										<td class="width10">{PHP.L.Category}:</td>
										<td>{ADMIN_PAGE_CATPATH_SHORT}</td>
									</tr>
									<!-- IF {ADMIN_PAGE_DESC} -->
									<tr>
										<td>{PHP.L.Description}:</td>
										<td>{ADMIN_PAGE_DESC}</td>
									</tr>
									<!-- ENDIF -->
									<!-- IF {ADMIN_PAGE_TEXT} -->
									<tr>
										<td>{PHP.L.Text}:</td>
										<td>{ADMIN_PAGE_TEXT}</td>
									</tr>
									<!-- ENDIF -->
								</table>
							</div>
						</div>
					</td>
					<td class="action {ADMIN_PAGE_ODDEVEN}">
						<!-- IF 1 OR {PHP.row.page_state} == 1 -->
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
				<!-- IF {PHP.is_row_empty} -->
				<tr>
					<td class="text-center" colspan="4"><h4 class="help-block">{PHP.L.None}</h4></td>
				</tr>
				<!-- ENDIF -->
				<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->
				<tr>
					<td colspan="4">
						<!-- IF {PHP.filter} != {PHP.L.adm_validated} -->
						<button type="submit" class="btn btn-info" name="paction" value="{PHP.L.Validate}"
								onclick="this.form.paction.value='{PHP.L.Validate}'"><span class="fa fa-check-circle-o"></span> {PHP.L.Validate}</button>
						<!-- ENDIF -->

						<button type="submit" class="btn btn-danger" name="paction" value="{PHP.L.Delete}"
								onclick="this.form.paction.value='{PHP.L.Delete}'"><span class="fa fa-trash-o"></span> {PHP.L.Delete}</button>
					</td>
				</tr>
				<!-- ENDIF -->
			</table>
		</form>

		<!-- IF {ADMIN_PAGE_PAGNAV} -->
		<div class="text-right">
			<nav>
				<ul class="pagination" style="margin-bottom: 0">
					{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}
				</ul>
			</nav>
			<span class="help-block">{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_PAGE_ON_PAGE}</span>
		</div>
		<!-- ENDIF -->
	</div>
</div>
<!-- END: MAIN -->