<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.tags
Tags=admin.tpl:{ADMIN_BREADCRUMBS},{ADMIN_TITLE},{ADMIN_SUBTITLE}
[END_COT_EXT]
==================== */
/**
 * Cpanel Module
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL');

// Более "Человечные названия"
// Временный кастыль. Но когда нибудь нужно все привести к нормальному виду
if($cfg['admintheme'] == 'cpanel') {
    $inc_file1 = (empty($m)) ? 'home' : $m;
    $inc_file1 = (empty($s)) ? $inc_file1 : $inc_file1.'.'.$s;
    if (in_array($inc_file1, $standard_admin))
    {
        $admintitle = $adminsubtitle;
        $adminsubtitle = '';
    }
    $admintitle = (!empty($admintitle)) ? $admintitle : $cot_modules[$m]['title'];
    $adminsubtitle = (!empty($adminsubtitle)) ? $adminsubtitle : '';

    if($adminsubtitle == $admintitle) $adminsubtitle = '';

    $title_params = array(
        'ADMIN' => $L['Administration'],
        'TITLE' => $admintitle
    );
    $out['subtitle'] = empty($admintitle) ? cot_title('{ADMIN}', $title_params) : cot_title('{TITLE} - {ADMIN}', $admintitle);

    $crumbs = cot_breadcrumbs($adminpath, false, true);

    $t->assign(array (
        'ADMIN_BREADCRUMBS' => $crumbs,
        'ADMIN_TITLE' => $admintitle,
        'ADMIN_SUBTITLE' => $adminsubtitle,
    ));
}

