<!-- BEGIN: MAIN -->
<ul<!-- IF {MENU_LEVEL} == 1 --> class="nav navbar-nav" id="top-menu"<!-- ELSE --> class="dropdown-menu"<!-- ENDIF -->>
    <!-- BEGIN: ITEM -->
    <li<!-- IF {MENU_SUBMENU} --> class="dropdown"<!-- ENDIF --> id="menu-item-{MENU_ID}">
        <!-- IF {MENU_URL} -->
            <a href="{MENU_URL}" <!-- IF {MENU_DESC} -->title="{MENU_DESC}"<!-- ENDIF --> <!-- IF {MENU_SUBMENU} -->class="dropdown-toggle" data-toggle="dropdown"<!-- ENDIF --> ><!-- ENDIF -->
                <!-- IF {MENU_ICON_CLASS} --><span class="{MENU_ICON_CLASS}"></span><!-- ENDIF --> {MENU_TITLE} <!-- IF {MENU_SUBMENU} --><b class="caret"></b><!-- ENDIF -->
        <!-- IF {MENU_URL} --></a><!-- ENDIF -->
        {MENU_SUBMENU}
    </li>
    <!-- END: ITEM -->
</ul>
<!-- END: MAIN -->



