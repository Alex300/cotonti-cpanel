<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

<!-- BEGIN: UPDATE -->
<div class=" alert alert-info">
    <h4>{PHP.L.home_update_notice}</h4>
    <p>{ADMIN_HOME_UPDATE_REVISION}. {ADMIN_HOME_UPDATE_MESSAGE}</p>
</div>
<!-- END: UPDATE -->

<div class="row js-masonry" data-masonry-options='{ "itemSelector": ".grid-item" }'>
    <!-- BEGIN: MAINPANEL -->
    {ADMIN_HOME_MAINPANEL}
    <!-- END: MAINPANEL -->

    <!-- BEGIN: SIDEPANEL -->
    {ADMIN_HOME_SIDEPANEL}
    <!-- END: SIDEPANEL -->
</div>
<div class="clearfix"></div>
<!-- END: MAIN -->