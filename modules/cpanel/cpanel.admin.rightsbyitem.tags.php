<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.rightsbyitem.tags
[END_COT_EXT]
==================== */
/**
 * Cpanel Module
 *
 * @package Cotonti
 * @subpackage Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Lily Software https://lily-software.com
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

global $cot_groups, $cot_modules;

$adminTitle = !empty($adminSubtitle) ? $adminSubtitle: Cot::$L['Rights'];
$adminSubtitle = '';
if (!empty($g) && !empty($cot_groups[$g])) {
    $adminSubtitle = $cot_groups[$g]['name'];
}

if ($ic == 'message' || $ic == 'admin') {
    $adminSubtitle =  Cot::$L['adm_code'][$ic];

} elseif ($ic == 'plug')  {
    if (isset($cot_plugins_enabled[$io])) {
        $adminSubtitle = $cot_plugins_enabled[$io]['title'];
    }

} elseif ($ic == 'structure') {
    $adminSubtitle = Cot::$L['Structure'];

} else {
    if (isset($io) && $io != 'a' && isset(Cot::$structure[$ic][$io])) {
        $adminSubtitle = Cot::$structure[$ic][$io]['title'];

    } elseif (isset($cot_modules[$ic])) {
        $adminSubtitle = $cot_modules[$ic]['title'];
    }
}

