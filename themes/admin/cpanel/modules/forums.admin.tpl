<!-- BEGIN: MAIN -->
<div class="button-toolbar">
	<a href="{ADMIN_FORUMS_URL_CONFIG}" class="btn btn-default" title="{PHP.L.Configuration}"
	   data-toggle="tooltip"><span class="fa fa-wrench"></span> {PHP.L.Configuration}</a>

	<a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn btn-default"><span class="fa fa-sitemap"></span> {PHP.L.Categories}</a>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-6 col-sm-push-6">
		<div class="panel panel-default margintop20">
			<div class="panel-heading">
				<h4 class="panel-title">{PHP.L.Statistics}</h4>
			</div>
			<div class="panel-body">
				<table class="table">
					<tr>
						<td>{PHP.L.forums_topics}:</td>
						<td class="centerall">{ADMIN_FORUMS_TOTALTOPICS}</td>
					</tr>
					<tr>
						<td>{PHP.L.forums_posts}:</td>
						<td class="centerall">{ADMIN_FORUMS_TOTALPOSTS}</td>
					</tr>
					<tr>
						<td>{PHP.L.Views}:</td>
						<td class="centerall">{ADMIN_FORUMS_TOTALVIEWS}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

    <div class="col-xs-12 col-sm-6 col-sm-pull-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.home_newtopics}</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th></th>
                            <th>{PHP.L.forums_topics}</th>
                            <th>{PHP.L.forums_posts}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
                    <tr>
                        <td class="width5">{ADMIN_FORUMS_ROW_II}.</td>
                        <td class="width85">{ADMIN_FORUMS_ROW_FORUMS} {PHP.cfg.separator} <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a></td>
                        <td class="width10 text-center">{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
                    </tr>
                    <!-- END: ADMIN_FORUMS_ROW_USER -->
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->