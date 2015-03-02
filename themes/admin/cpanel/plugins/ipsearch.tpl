<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.ipsearch_searchthisuser}</h4>
            </div>
            <div class="panel-body">
                <form id="search" action="{IPSEARCH_FORM_URL}" method="get" class="form-inline">
                    <input type="hidden" name="m" value="other" />
                    <input type="hidden" name="p" value="ipsearch" />
                    <input type="hidden" name="a" value="search" />
                    <input type="hidden" name="x" value="{PHP.sys.xk}" />
                    <input type="text" class="form-control" name="id" value="{IPSEARCH_ID}" size="16" maxlength="16"
                            style="width: 55%" />
                    <button type="submit" class="btn btn-default"><span class="fa fa-search"></span> {PHP.L.Search}</button>
                </form>

                <!-- IF {IPSEARCH_RES_DNS} -->
                <h4 class="margintop20" style="margin-bottom: 0">{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</h4>
                <!-- ENDIF -->
            </div>
        </div>
    </div>

    <!-- BEGIN: IPSEARCH_RESULTS -->
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.ipsearch_title}</h4>
            </div>
            <div class="panel-body">
                <p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
                <ul>
                    <!-- BEGIN: IPSEARCH_IPMASK1 -->
                    <li>{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
                    <!-- END: IPSEARCH_IPMASK1 -->
                </ul>
                <p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
                <ul>
                    <!-- BEGIN: IPSEARCH_IPMASK2 -->
                    <li>{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
                    <!-- END: IPSEARCH_IPMASK2 -->
                </ul>
                <p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
                <ul>
                    <!-- BEGIN: IPSEARCH_IPMASK3 -->
                    <li>{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
                    <!-- END: IPSEARCH_IPMASK3 -->
                </ul>
            </div>
        </div>
    </div>
    <!-- END: IPSEARCH_RESULTS -->
</div>
<!-- END: MAIN -->