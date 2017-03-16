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
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Portal30 Studio http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL');

// Более "Человечные названия"
// Временный кастыль. Но когда нибудь нужно все привести к нормальному виду
if(cot::$cfg['admintheme'] == 'cpanel') {
    global $m;

    $m = cot_import('m', 'G', 'ALP', 24);

    $inc_file1 = (empty($m)) ? 'home' : $m;
    $inc_file1 = (empty($s)) ? $inc_file1 : $inc_file1.'.'.$s;
    if (in_array($inc_file1, $standard_admin) && empty($admintitle))
    {
        $admintitle = $adminsubtitle;
        $adminsubtitle = '';
    }

    // Extensions can use $adminsubtitle only
    if(empty($admintitle) && !empty($adminsubtitle)) {
        $admintitle = $adminsubtitle;
        $adminsubtitle = '';
    }

    if(empty($admintitle) && !empty($m) && !empty($cot_modules[$m])) $admintitle = $cot_modules[$m]['title'];
    if(empty($admintitle) && !empty($m) && $m == 'other' && !empty($p) && !empty($cot_plugins_enabled[$p])) {
        $admintitle = $cot_plugins_enabled[$p][$m]['title'];
    }
    $adminsubtitle = (!empty($adminsubtitle)) ? $adminsubtitle : '';

    if($adminsubtitle == $admintitle) $adminsubtitle = '';

    $title_params = array(
        'ADMIN' => cot::$L['Administration'],
        'TITLE' => $admintitle
    );
    $out['subtitle'] = empty($admintitle) ? cot_title('{ADMIN}', $title_params) : cot_title('{TITLE} - {ADMIN}', $admintitle);

    $crumbs = cot_breadcrumbs($adminpath, false, true);

    // Standart admin pages
    if(($m == 'config' && empty($o)) || ($m == 'other' && empty($p)) ||
            in_array($m, array('structure', 'extensions', 'users', 'cache', 'extrafields', 'rights')) ) {
        cpanel::$useDefaultPanel = false;
    }

    // Cotonti extensions
    if(in_array($m, array('page', 'polls')) ||
        ($m == 'other' && in_array($p, array('banlist', 'comments', 'contact', 'hits', 'ipsearch', 'referers', 'tags'))) )
    {
        cpanel::$useDefaultPanel = false;
    }

    // Thirty part extensions
    if(in_array($m, array('files'))  || ($m == 'other' && in_array($p, array('menugenerator', 'regioncity'))) ) {
        cpanel::$useDefaultPanel = false;
    }

    $t->assign(array (
        'ADMIN_BREADCRUMBS' => $crumbs,
        'ADMIN_TITLE' => htmlspecialchars($admintitle),
        'ADMIN_SUBTITLE' => $adminsubtitle,
        'ADMIN_PANEL' => cpanel::$useDefaultPanel ? 1 : 0,
        'ADMIN_PANEL_TITLE' => !empty(cpanel::$panelTitle) ? htmlspecialchars(cpanel::$panelTitle) : htmlspecialchars($admintitle),
    ));
}

