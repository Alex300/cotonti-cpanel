<!-- BEGIN: FOOTER -->
        </div>
    </div>
    <div id="footer" class="footer text-center">
        <ul class="list-inline">
            <li><a href="{PHP|cot_url('admin')}">{PHP.L.Home}</a></li>
            <li><a href="{PHP|cot_url('admin','m=config')}">{PHP.L.Configuration}</a></li>
            <li><a href="{PHP|cot_url('admin','m=structure')}">{PHP.L.Structure}</a></li>
            <li><a href="{PHP|cot_url('admin','m=extensions')}">{PHP.L.Extensions}</a></li>
            <li><a href="{PHP|cot_url('admin','m=users')}">{PHP.L.Users}</a></li>
            <li><a href="{PHP|cot_url('admin','m=other')}">{PHP.L.Other}</a></li>
        </ul>
        <p>
            {PHP.out.copyright} {PHP.cfg.version}
            &nbsp; | &nbsp;
            <a href="http://portal30.ru/sozdanie-internet-sajtov/free-scripts/cpanel" target="_blank">Admin theme «cPanel»</a>
            {PHP.cot_modules.cpanel.version}
        </p>
    </div>

    <a href="#" class="btn btn-icon btn-success btn-scroll-to-top fade" data-click="scroll-top">
        <i class="fa fa-angle-up"></i>
    </a>
</div><!-- /#page container -->
{FOOTER_RC}
<!-- ================== BEGIN BASE JS ================== -->
<!--<script src="lib/jquery-ui-1.11.2/jquery-ui.min.js"></script>-->
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<script src="themes/admin/cpanel/js/crossbrowserjs/excanvas.min.js"></script>
<script src="themes/admin/cpanel/js/crossbrowserjs/respond.min.js"></script>
<script src="themes/admin/cpanel/js/crossbrowserjs/html5shiv.js"></script>
<![endif]-->
<script src="themes/admin/cpanel/js/slimscroll/jquery.slimscroll.min.js"></script>
<!-- ================== END BASE JS ================== -->

<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<script src="themes/admin/cpanel/js/cpanel.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->
</body>
</html>
<!-- END: FOOTER -->