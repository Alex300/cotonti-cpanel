<!-- IF 0 == 1 -->
Основной каркас админки. Нужен только для частей старой админки ядра.
Модуль cpanel не должен использовать, наверное.
Разнести по хедеру и футеру
<!-- ENDIF -->
<!-- BEGIN: MAIN -->
	<!-- BEGIN: BODY -->
        {ADMIN_BREADCRUMBS}
        <!-- IF {ADMIN_TITLE} OR {ADMIN_SUBTITLE}  -->
        <h1 class="page-header">{ADMIN_TITLE}<!-- IF {ADMIN_SUBTITLE}  --> <small>{ADMIN_SUBTITLE}</small><!-- ENDIF --></h1>
        <!-- ENDIF -->

        <div class="clearfix"></div>

		<div id="main" class="body">
			{ADMIN_MAIN}
			<!-- IF {ADMIN_HELP} -->
            <div class="well margintop20">
                <h4 style="margin-top: 0"><span class="fa fa-question-circle"></span> {PHP.L.Help}:</h4>
                {ADMIN_HELP}
            </div>
			<!-- ENDIF -->
		</div>
	<!-- END: BODY -->
<!-- END: MAIN -->