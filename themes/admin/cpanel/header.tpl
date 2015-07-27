<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
    <title>{HEADER_TITLE}</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="description" content="{HEADER_META_DESCRIPTION}" />
    <meta name="keywords" content="{HEADER_META_KEYWORDS}" />
    <meta name="generator" content="Cotonti http://www.cotonti.com" />
    <meta http-equiv="expires" content="Fri, Apr 01 1974 00:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="last-modified" content="{HEADER_META_LASTMODIFIED} GMT" />
    {HEADER_BASEHREF}
    {HEADER_HEAD}
    <link rel="shortcut icon" href="favicon.ico" />
    {HEADER_COMPOPUP}
</head>
<body>
<div id="page-loader" class="fade in"><span class="spinner"></span></div>

<div id="page-container" class="fade">

    <div id="header" class="header navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- mobile sidebar expand / collapse button -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <img alt="Brand" src="themes/admin/cpanel/cpanel.png"> {PHP.cfg.maintitle}
                </a>

                <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- /mobile sidebar expand / collapse button -->
           {HEADER_MENU_TOP}

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <form class="navbar-form full-width" action="{PHP|cot_url('search')}">
                        <div class="form-group">
                            <input type="text" class="form-control" name="sq" placeholder="{PHP.L.Search}..." />
                            <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </li>
                <!-- IF {HEADER_NOTICES_COUNT} -->
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                        <i class="fa fa-bell-o"></i>
                        <span class="label">{HEADER_NOTICES_COUNT}</span>
                    </a>
                    <ul class="dropdown-menu media-list pull-right animated fadeInDown">
                        <li class="dropdown-header">Notifications ({HEADER_NOTICES_COUNT})</li>
                        {HEADER_NOTICES}
                    </ul>
                </li>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_module_active('pm')} -->
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                        <i class="fa fa-envelope-o"></i>
                        <!-- IF {HEADER_USER_MESSAGES} > 0 --><span class="label">{HEADER_USER_MESSAGES}</span><!-- ENDIF -->
                    </a>
                    <ul class="dropdown-menu media-list pull-right animated fadeInDown">
                        <li class="dropdown-header">{PHP.L.Private_Messages} ({HEADER_USER_MESSAGES})</li>
                        <li class="media">{HEADER_USER_PMREMINDER}</li>
                    </ul>
                </li>
                <!-- ENDIF -->
                <li class="dropdown navbar-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        {HEADER_USER_AVATAR}
                        <span class="hidden-xs">{HEADER_USER_FULL_NAME}</span> <b class="caret"></b>
                    </a>
                    {HEADER_MENU_USER}
                </li>
            </ul>
            <!-- end header navigation right -->
        </div><!-- /.container-fluid -->
    </div><!-- /#header -->


    <div id="sidebar" class="sidebar">
        <!-- begin sidebar scrollbar -->
        <div data-scrollbar="true" data-height="100%">
            <!-- sidebar title -->
            <ul class="nav">
                <li class="nav-title">
                    <div class="info">
                        {PHP.L.Adminpanel}
                        <small>{PHP.L.Navigation}</small>
                    </div>
                </li>
            </ul>
            <!-- /sidebar title -->
            {HEADER_MENU_SIDE}
        </div>
        <!-- end sidebar scrollbar -->
    </div> <!-- /#sidebar -->

    <div id="content" class="content">
        <div id="ajaxBlock">
<!-- END: HEADER -->