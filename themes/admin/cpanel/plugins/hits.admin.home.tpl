<!-- BEGIN: MAIN -->

<!-- BEGIN: STAT -->
<div class="col-xs-12 col-sm-6">
    <div class="panel panel-default margintop20">
        <div class="panel-heading">
            <h4 class="panel-title">{PHP.L.hits_hits}:</h4>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-condensed">
            <!-- BEGIN: ADMIN_HOME_ROW -->
                <tr>
                    <td class="width10">{ADMIN_HOME_DAY}</td>
                    <td class="centerall width40">
                        <div class="progress margin0">
                            <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar"
                                 aria-valuenow="{ADMIN_HOME_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"
                                 style="width: {ADMIN_HOME_PERCENTBAR}%">
                                <span class="sr-only">{ADMIN_HOME_PERCENTBAR}%</span>
                            </div>
                        </div>

                    </td>
                    <td class="width15">{PHP.L.Hits}: {ADMIN_HOME_HITS}</td>
                    <td class="textcenter width10">{ADMIN_HOME_PERCENTBAR}%</td>
                </tr>
            <!-- END: ADMIN_HOME_ROW -->
            </table>
            <p><a href="{ADMIN_HOME_MORE_HITS_URL}">{PHP.L.ReadMore}</a></p>
        </div>
	</div>
</div>
<!-- END: STAT -->

<!-- BEGIN: ACTIVITY -->
<div class="col-xs-12 col-sm-6">
    <div class="panel panel-default margintop20">
        <div class="panel-heading">
            <h4 class="panel-title">{PHP.L.hits_activity}:</h4>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-condensed">
                <tr>
                    <td class="width80"><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
                    <td class="textcenter width20">{ADMIN_HOME_NEWUSERS}</td>
                </tr>
                <tr>
                    <td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
                    <td class="textcenter">{ADMIN_HOME_NEWPAGES}</td>
                </tr>
                <!-- IF {PHP.cot_modules.forums} -->
                <tr>
                    <td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
                    <td class="textcenter">{ADMIN_HOME_NEWTOPICS}</td>
                </tr>
                <tr>
                    <td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
                    <td class="textcenter">{ADMIN_HOME_NEWPOSTS}</td>
                </tr>
                <!-- ENDIF -->
                <!-- IF {PHP.cot_modules.pm} -->
                <tr>
                    <td>{PHP.L.home_newpms}</td>
                    <td class="textcenter">{ADMIN_HOME_NEWPMS}</td>
                </tr>
             <!-- ENDIF -->
            </table>
        </div>
    </div>
</div>
<!-- END: ACTIVITY -->
<!-- END: MAIN -->