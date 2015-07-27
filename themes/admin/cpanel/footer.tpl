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
<!--[if lt IE 9]>
<script src="themes/admin/cpanel/js/crossbrowserjs/excanvas.min.js"></script>
<script src="themes/admin/cpanel/js/crossbrowserjs/respond.min.js"></script>
<script src="themes/admin/cpanel/js/crossbrowserjs/html5shiv.js"></script>
<![endif]-->
{FOOTER_RC}
</body>
</html>
<!-- END: FOOTER -->