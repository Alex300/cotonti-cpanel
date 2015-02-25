<!-- BEGIN: MAIN -->
<div class="button-toolbar">
    <a title="{PHP.L.Configuration}" href="{PHP|cot_url('admin', 'm=config&n=edit&o=module&p=files')}"
       class="btn btn-default marginbottom10"><span class="fa fa-wrench"></span> {PHP.L.Configuration}</a>
    <a href="{PHP|cot_url('admin', 'm=extrafields&n=cot_files')}" class="btn btn-default marginbottom10"><span class="fa fa-check-square-o"></span>
        {PHP.L.files_extrafields_files}</a>
    <a href="{PHP|cot_url('admin', 'm=extrafields&n=cot_files_folders')}" class="btn btn-default marginbottom10">
        <span class="fa fa-check-square-o"></span> {PHP.L.files_extrafields_folders}</a>
    <a href="{PHP|cot_url('admin', 'm=files&a=allpfs')}" class="btn btn-info marginbottom10"><span class="fa fa-folder-open"></span>
        {PHP.L.files_allpfs}</a>
    <a href="{PHP|cot_url('files', 'm=pfs&uid=0')}" class="btn btn-info marginbottom10"><span class="fa fa-folder-open"></span> {PHP.L.SFS}</a>
    <a href="{PHP|cot_url('admin', 'm=files&a=cleanup')}" onclick="return confirm('{PHP.L.files_cleanup_conf}')"
       class="btn btn-warning marginbottom10"><span class="fa fa-recycle"></span> {PHP.L.files_cleanup}</a>
    <a href="{PHP|cot_url('admin', 'm=files&a=delAllThumbs')}" onclick="return confirm('{PHP.L.files_deleteallthumbs_conf}')"
       class="btn btn-danger marginbottom10"><span class="fa fa-trash-o"></span> {PHP.L.files_deleteallthumbs}</a>
</div>
{FILE "{PHP.cfg.themes_dir}/admin/cpanel/warnings.tpl"}

{CONTENT}
<!-- END: MAIN -->
