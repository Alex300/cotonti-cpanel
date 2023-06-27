<!-- BEGIN: MAIN -->
<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.adm_core_info}</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <tr>
                        <td class="width40">{PHP.L.Version}</td>
                        <td>{ADMIN_INFOS_VERSION}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.Database}</td>
                        <td>{ADMIN_INFOS_DB_VERSION}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.home_db_rows}</td>
                        <td>{ADMIN_INFOS_DB_TOTAL_ROWS}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.home_db_indexsize}</td>
                        <td>{ADMIN_INFOS_DB_INDEXSIZE}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.home_db_datassize}</td>
                        <td>{ADMIN_INFOS_DB_DATASSIZE}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.home_db_totalsize}</td>
                        <td>{ADMIN_INFOS_DB_TOTALSIZE}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.Plugins}</td>
                        <td>{ADMIN_INFOS_TOTALPLUGINS}</td>
                    </tr>
                    <tr>
                        <td class="textright">{PHP.L.Hooks}</td>
                        <td>{ADMIN_INFOS_TOTALHOOKS}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-md-6">
        <div class="panel panel-default margintop20">
            <div class="panel-heading">
                <h4 class="panel-title">{PHP.L.adm_server_info}</h4>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <tr>
                        <td class="width40">{PHP.L.adm_phpver}</td>
                        <td>{ADMIN_INFOS_PHPVER}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_zendver}</td>
                        <td>{ADMIN_INFOS_ZENDVER}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_interface}</td>
                        <td>{ADMIN_INFOS_INTERFACE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_cachedrivers}</td>
                        <td>{ADMIN_INFOS_CACHEDRIVERS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_os}</td>
                        <td>{ADMIN_INFOS_OS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time1}</td>
                        <td>{ADMIN_INFOS_DATE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time2}</td>
                        <td>{ADMIN_INFOS_GMDATE} GMT</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time3}</td>
                        <td>{ADMIN_INFOS_GMTTIME}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time4}</td>
                        <td>{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->