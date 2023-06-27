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
if (!empty(Cot::$cfg['admintheme']) && Cot::$cfg['admintheme'] == 'cpanel') {
    global $m;

    $m = cot_import('m', 'G', 'ALP', 24);

    $inc_file1 = (empty($m)) ? 'home' : $m;
    $inc_file1 = (empty($s)) ? $inc_file1 : $inc_file1.'.'.$s;
//    if (in_array($inc_file1, $standard_admin) && empty($adminTitle)) {
//        $adminTitle = $adminsubtitle;
//        $adminsubtitle = '';
//    }

    // Extensions can use $adminsubtitle only
    if (empty($adminTitle) && !empty($adminsubtitle)) {
        $adminTitle = $adminsubtitle;
        $adminsubtitle = '';
    }

    if (empty($adminTitle) && !empty($m) && !empty($cot_modules[$m])) {
        $adminTitle = $cot_modules[$m]['title'];
    }
    if (empty($adminTitle) && !empty($m) && $m == 'other' && !empty($p) && !empty($cot_plugins_enabled[$p])) {
        $adminTitle = $cot_plugins_enabled[$p][$m]['title'];
    }
    $adminsubtitle = (!empty($adminsubtitle)) ? $adminsubtitle : '';

    if ($adminsubtitle == $adminTitle) {
        $adminsubtitle = '';
    }

    $title_params = array(
        'ADMIN' => Cot::$L['Administration'],
        'TITLE' => $adminTitle
    );
    $out['subtitle'] = empty($adminTitle) ?
        cot_title('{ADMIN}', $title_params) : cot_title('{TITLE} - {ADMIN}', $adminTitle);

    $crumbs = cot_breadcrumbs($adminpath, false, true);

    // Standart admin pages
    if (
        ($m == 'config' && empty($o))
        || ($m == 'other' && empty($p))
        || in_array($m, ['structure', 'extensions', 'users', 'cache', 'extrafields', 'rights', 'infos'])
    ) {
        CPanel::$useDefaultPanel = false;
    }

    // Cotonti extensions
    if(
        in_array($m, array('page', 'polls'))
        || (
            $m == 'other'
            && in_array($p, array('banlist', 'comments', 'contact', 'hits', 'ipsearch', 'referers', 'tags'))
        )
    ) {
        CPanel::$useDefaultPanel = false;
    }

    // Thirty part extensions
    if (in_array($m, array('files'))  || ($m == 'other' && in_array($p, array('menugenerator', 'regioncity')))) {
        CPanel::$useDefaultPanel = false;
    }

    $t->assign([
        'ADMIN_BREADCRUMBS' => $crumbs,
        'ADMIN_TITLE' => htmlspecialchars($adminTitle),
        'ADMIN_SUBTITLE' => $adminsubtitle,
        'ADMIN_PANEL' => CPanel::$useDefaultPanel ? 1 : 0,
        'ADMIN_PANEL_TITLE' => !empty(CPanel::$panelTitle) ?
            htmlspecialchars(CPanel::$panelTitle) : htmlspecialchars($adminTitle),
    ]);
}

