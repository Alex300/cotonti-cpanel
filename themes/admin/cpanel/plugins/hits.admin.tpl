<!-- BEGIN: MAIN -->
<h2>{PHP.L.Hits}</h2>

<p>{ADMIN_HITS_MAXHITS}</p>

<!-- BEGIN: YEAR_OR_MONTH -->
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">{PHP.v}</h4>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <!-- BEGIN: ROW -->
            <tr>
                <td class="width15">{ADMIN_HITS_ROW_DAY}</td>
                <td class="width15">{PHP.L.Hits}: {ADMIN_HITS_ROW_HITS}</td>
                <td class="width10">{ADMIN_HITS_ROW_PERCENTBAR}%</td>
                <td class="width60">
                    <div class="progress">
                        <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar"
                             aria-valuenow="{ADMIN_HITS_ROW_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"
                             style="width: {ADMIN_HITS_ROW_PERCENTBAR}%">
                            <span class="sr-only">{ADMIN_HITS_ROW_PERCENTBAR}% Complete</span>
                        </div>
                    </div>
                </td>
            </tr>
            <!-- END: ROW -->
        </table>
    </div>
</div>
<!-- END: YEAR_OR_MONTH -->

<!-- BEGIN: DEFAULT -->
<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.hits_byyear}</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <!-- BEGIN: ROW_YEAR -->
                    <tr>
                        <td class="width10"><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
                        <td class="width20">{PHP.L.Hits}: {ADMIN_HITS_ROW_YEAR_HITS}</td>
                        <td class="width10">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
                        <td class="width60">
                            <div class="progress">
                                <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar"
                                     aria-valuenow="{ADMIN_HITS_ROW_YEAR_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"
                                     style="width: {ADMIN_HITS_ROW_YEAR_PERCENTBAR}%">
                                    <span class="sr-only">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}% Complete</span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <!-- END: ROW_YEAR -->
                </table>
            </div>
        </div>

        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.hits_bymonth}</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <!-- BEGIN: ROW_MONTH -->
                    <tr>
                        <td class="width10"><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
                        <td class="width20">{PHP.L.Hits}: {ADMIN_HITS_ROW_MONTH_HITS}</td>
                        <td class="width10">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
                        <td class="width60">
                            <div class="progress">
                                <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar"
                                     aria-valuenow="{ADMIN_HITS_ROW_MONTH_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"
                                     style="width: {ADMIN_HITS_ROW_MONTH_PERCENTBAR}%">
                                    <span class="sr-only">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}% Complete</span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <!-- END: ROW_MONTH -->
                </table>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.hits_byweek}</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <!-- BEGIN: ROW_WEEK -->
                    <tr>
                        <td class="width10">{ADMIN_HITS_ROW_WEEK}</td>
                        <td class="width20">{PHP.L.Hits}: {ADMIN_HITS_ROW_WEEK_HITS}</td>
                        <td class="width10">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
                        <td class="width60">
                            <div class="progress">
                                <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar"
                                     aria-valuenow="{ADMIN_HITS_ROW_WEEK_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"
                                     style="width: {ADMIN_HITS_ROW_WEEK_PERCENTBAR}%">
                                    <span class="sr-only">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}% Complete</span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <!-- END: ROW_WEEK -->
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: DEFAULT -->
<!-- END: MAIN -->