<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-xs-12 col-md-6">
		<div class="panel panel-default margintop20">
			<div class="panel-heading">
				<h4 class="panel-title">{PHP.L.Core}</h4>
			</div>
			<div class="panel-body">
				<table class="table table-hover margin0">
					<tr>
						<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
						<td>
							<div class="strong"><a href="{ADMIN_OTHER_URL_CACHE}">{PHP.L.adm_internalcache}</a></div>
							<div class="help-block margin0">{PHP.L.adm_internalcache_desc}</div>
						</td>
					</tr>
					<tr>
						<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
						<td>
							<div class="strong"><a href="{ADMIN_OTHER_URL_DISKCACHE}">{PHP.L.adm_diskcache}</a></div>
							<div class="help-block margin0">{PHP.L.adm_diskcache_desc}</div>
						</td>
					</tr>
					<tr>
						<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
						<td>
							<div class="strong"><a href="{ADMIN_OTHER_URL_EXFLDS}">{PHP.L.adm_extrafields}</a></div>
							<div class="help-block margin0">{PHP.L.adm_extrafields_desc}</div>
						</td>
					</tr>
					<tr>
						<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
						<td>
							<div class="strong"><a href="{ADMIN_OTHER_URL_LOG}">{PHP.L.adm_log}</a></div>
							<div class="help-block margin0">{PHP.L.adm_log_desc}</div>
						</td>
					</tr>
					<tr>
						<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png"/></td>
						<td>
							<div class="strong"><a href="{ADMIN_OTHER_URL_INFOS}">{PHP.L.adm_infos}</a></div>
							<div class="help-block margin0">{PHP.L.adm_infos_desc}</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<!-- BEGIN: SECTION -->
	<div class="col-xs-12 col-md-6">
		<div class="panel panel-default margintop20">
			<div class="panel-heading">
				<h4 class="panel-title">{ADMIN_OTHER_SECTION}</h4>
			</div>
			<div class="panel-body">
				<table class="table table-hover margin0">
					<!-- BEGIN: ROW -->
					<tr>
						<td class="centerall width10">
							<!-- IF {ADMIN_OTHER_EXT_ICO} -->
							<img src="{ADMIN_OTHER_EXT_ICO}"/>
							<!-- ELSE -->
							<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
							<!-- ENDIF -->
						</td>
						<td class="width90">
							<div class="strong"><a href="{ADMIN_OTHER_EXT_URL}">{ADMIN_OTHER_EXT_NAME}</a></div>
							<div class="help-block margin0">{ADMIN_OTHER_EXT_DESC}</div>
						</td>
					</tr>
					<!-- END: ROW -->
					<!-- BEGIN: EMPTY -->
					<tr>
						<td colspan="2">{PHP.L.adm_listisempty}</td>
					</tr>
					<!-- END: EMPTY -->
				</table>
			</div>
		</div>
	</div>
	<!-- END: SECTION -->
</div>
<!-- END: MAIN -->