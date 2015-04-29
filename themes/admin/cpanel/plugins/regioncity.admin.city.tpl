<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}
<div class="row">
    <div class="col-xs-12 col-md-7">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">{REGION_NAME} ({COUNTRY_NAME})</h4>
            </div>
            <div class="panel-body">
                <form action="{EDIT_FORM_ACTION_URL}" method="post" name="newcountry">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="width50">{PHP.L.Title}</th>
                                <th></th>
                                <th class="width15">{PHP.L.Order}</th>
                                <th class="width15">{PHP.L.Action}</th>
                            </tr>
                        </thead>
                        <!-- BEGIN: ROWS -->
                        <tr>
                            <td>{CITY_ROW_NAME} </td>
                            <td>{CITY_ROW_REGION}</td>
                            <td>{CITY_ROW_SORT}</td>
                            <td>
                                <a title="{PHP.L.Delete}" href="{CITY_ROW_DEL_URL}" class="confirmLink btn btn-danger"><span
                                        class="fa fa-trash"></span> {PHP.L.Delete}</a>
                            </td>
                        </tr>
                        <!-- END: ROWS -->
                        <!-- BEGIN: NOROWS -->
                        <tr>
                            <td class="text-muted text-center" colspan="3">{PHP.L.ls_nocountries}</td>
                        </tr>
                        <!-- END: NOROWS -->
                    </table>
                    <button type="submit" class="btn btn-primary"><span class="fa fa-floppy-o"></span> {PHP.L.Update}</button>

                    <!-- IF {PAGENAV_PAGES} -->
                    <div class="text-right">
                        <nav>
                            <ul class="pagination" style="margin: 0">
                                {PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}
                            </ul>
                        </nav>
                        <span class="help-block">{PHP.L.Total}: {TOTALITEMS}, {PHP.L.Onpage}: {ON_PAGE}</span>
                    </div>
                    <!-- ENDIF -->
                </form>
            </div>
        </div>
    </div>

    <!-- BEGIN: ADDFORM -->
    <div class="col-xs-12 col-md-5">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4 class="panel-title"><span class="fa fa-plus"></span> {PHP.L.rec_addcity}</h4>
            </div>
            <div class="panel-body">
                <form action="{ADD_FORM_ACTION_URL}" method="post" name="newregion">
                    <div class="form-group">
                        <label>{PHP.L.rec_newcity_list}</label>
                        {ADD_FORM_NAME}
                        <span class="help-block">{PHP.L.rec_newcity_newstr}</span>
                    </div>

                    <button type="submit" class="btn btn-primary"><span class="fa fa-plus"></span> {PHP.L.Add}</button>
                </form>
            </div>
        </div>
    </div>
    <!-- END: ADDFORM -->
</div>
<!-- END: MAIN -->