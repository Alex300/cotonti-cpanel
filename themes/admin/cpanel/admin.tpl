<!-- IF 0 == 1 -->
Основной каркас админки. Нужен только для частей старой админки ядра.
Модуль cpanel не должен использовать, наверное.
Разнести по хедеру и футеру
<!-- ENDIF -->
<!-- BEGIN: MAIN -->
	<!-- BEGIN: BODY -->
        <div id="breadcrumbs">{ADMIN_BREADCRUMBS}</div>
        <!-- IF {ADMIN_TITLE} OR {ADMIN_SUBTITLE}  -->
        <h1 class="page-header">{ADMIN_TITLE}<!-- IF {ADMIN_SUBTITLE}  --> <small>{ADMIN_SUBTITLE}</small><!-- ENDIF --></h1>
        <!-- ENDIF -->

        <div class="clearfix"></div>

		<div id="main" class="body">
            <!-- IF {ADMIN_PANEL} == 1 -->
            <div class="panel panel-default margintop20">
                <div class="panel-heading">
                    <h4 class="panel-title">{ADMIN_PANEL_TITLE}</h4>
                </div>
                <div class="panel-body">
                <!-- ENDIF -->
                {ADMIN_MAIN}
                <!-- IF {ADMIN_PANEL} == 1 -->
                </div>
            </div>
            <!-- ENDIF -->

			<!-- IF {ADMIN_HELP} -->
            <div class="well margintop20">
                <h4 style="margin-top: 0"><span class="fa fa-question-circle"></span> {PHP.L.Help}:</h4>
                {ADMIN_HELP}
            </div>
			<!-- ENDIF -->
		</div>
	<!-- END: BODY -->
<!-- END: MAIN -->