<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}
<div class="row">
	<div class="col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">{PHP.L.Messages}</h4>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="width10">{PHP.L.Date}</th>
							<th class="width15">{PHP.L.User}</th>
							<th>{PHP.L.Message}</th>
							<th class="width15"></th>
						</tr>
					<thead>
					<tbody>
					<!-- BEGIN: DATA -->
					<tr>
						<td class="">
							{CONTACT_DATE}
							<!-- IF {CONTACT_VAL} == val -->
							<span class="label label-danger">{PHP.L.contact_shortnew}</span>
							<!-- ENDIF -->
						</td>
						<td>{CONTACT_USER}<br />{CONTACT_EMAIL}</td>
						<td style="overflow-x: hidden">{CONTACT_TEXTSHORT}</td>
						<td class="text-right">
							<a href="{CONTACT_VIEWLINK}" class="btn btn-primary" title="{PHP.L.short_open}"
								data-toggle="tooltip"><span class="fa fa-folder-open-o"></span></a>

							<!-- IF {CONTACT_VAL} == val -->
							<a href="{CONTACT_READLINK}" title="{PHP.L.contact_markread}" class="btn btn-success ajax"
								data-toggle="tooltip"><span class="fa fa-check"></span></a>
							<!-- ELSE -->
							<a href="{CONTACT_UNREADLINK}" title="{PHP.L.contact_markunread}" class="btn btn-default ajax"
							   data-toggle="tooltip"><span class="fa fa-check"></a>
							<!-- ENDIF -->

							<a href="{CONTACT_DELLINK}" title="{PHP.L.Delete}"  class="btn btn-danger confirmLink"
							   data-toggle="tooltip"><span class="fa fa-trash-o"></span></a>
						</td>
					</tr>
					<!-- END: DATA -->
					</tbody>
				</table>

                <!-- IF {CONTACT_PAGINATION} -->
                <div class="text-right">
                    <nav>
                        <ul class="pagination" style="margin: 0">
                            {CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}
                        </ul>
                    </nav>
                </div>
                <!-- ENDIF -->
			</div>
		</div>


		<!-- BEGIN: VIEW -->
		<a name="view"></a>
		<div class="panel panel panel-info margintop20">
			<div class="panel-heading">
				<h4 class="panel-title">
					{PHP.L.contact_view} #{CONTACT_ID} (<!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF -->)
				</h4>
			</div>
			<div class="panel-body">
				<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
					<table class="table">
						<tr>
							<td class="width10">{PHP.L.Username}:</td>
							<td class="strong">{CONTACT_USER}</td>
						</tr>
						<tr>
							<td>{PHP.L.Date}:</td>
							<td>{CONTACT_DATE_STAMP|cot_date('datetime_fulltext', $this)}</td>
						</tr>
						<tr>
							<td>{PHP.L.Email}:</td>
							<td>{CONTACT_EMAIL} </td>
						</tr>
						<tr>
							<td>{PHP.L.Subject}:</td>
							<td>
								<!-- IF {CONTACT_SUBJECT} == '' -->
								<b>{CONTACT_SUBJECT}</b>
								<!-- ELSE -->
								<span class="help-block margin0 italic">{PHP.L.contact_nosubject}</span>
								<!-- ENDIF -->
							</td>
						</tr>
						<tr>
							<td>{PHP.L.Message}:</td>
							<td>{CONTACT_TEXT}</td>
						</tr>
						<!-- BEGIN: EXTRAFLD -->
						<tr>
							<td>{CONTACT_EXTRAFLD_TITLE}</td>
							<td>{CONTACT_EXTRAFLD}</td>
						</tr>
						<!-- END: EXTRAFLD -->
						<!-- IF {CONTACT_REPLY} -->
						<tr style="color:#900;">
							<td>{PHP.L.contact_sent}:</td>
							<td>{CONTACT_REPLY}</td>
						</tr>
						<!-- ENDIF -->
						<tr>
							<td>{PHP.L.Reply}:</td>
							<td>{CONTACT_FORM_TEXT}</td>
						</tr>
						<tr>
							<td></td>
							<td><button type="submit" class="btn btn-primary"><span class="fa fa-envelope"></span> {PHP.L.Submit}</button></td>
						</tr>
					</table>
				 </form>
			</div>
		</div>
		<!-- END: VIEW -->
	</div>
</div>
<!-- END: MAIN -->