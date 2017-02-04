<!-- BEGIN: MAIN -->
<ul<!-- IF {MENU_LEVEL} == 1 --> class="nav" id="side-menu"<!-- ELSE --> class="sub-menu"<!-- ENDIF -->>
<!-- IF {MENU_LEVEL} == 1 --><li class="nav-header">Menu</li><!-- ENDIF -->
    <!-- BEGIN: ITEM -->
    <li class="<!-- IF {MENU_SUBMENU} -->has-sub<!-- ENDIF --> <!-- IF {MENU_ACTIVE} -->active<!-- ENDIF -->" id="menu-item-{MENU_ID}">
        <!-- IF {MENU_URL} -->
            <a href="{MENU_URL}" <!-- IF {MENU_DESC} -->title="{MENU_DESC}"<!-- ENDIF -->><!-- ENDIF -->
                <!-- IF {MENU_ICON_CLASS} --><i class="{MENU_ICON_CLASS}"></i><!-- ENDIF -->
                <span>{MENU_TITLE}</span>
        <!-- IF {MENU_SUBMENU} --><span class="opener"><b class="caret pull-right"></b></span><!-- ENDIF -->
        <!-- IF {MENU_URL} --></a><!-- ENDIF -->
        {MENU_SUBMENU}
    </li>
    <!-- END: ITEM -->

    <!-- IF {MENU_LEVEL} == 1 -->
    <li><a href="#" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
    <!-- ENDIF -->
</ul>
<!-- END: MAIN -->