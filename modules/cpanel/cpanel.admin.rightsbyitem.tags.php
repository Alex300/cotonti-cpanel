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
 * @subpackage  Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Portal30 Studio http://portal30.ru
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

global $cot_groups, $cot_modules;

$admintitle = !empty($adminsubtitle) ? $adminsubtitle: cot::$L['Rights'];
$adminsubtitle = '';
if(!empty($g) && !empty($cot_groups[$g])) {
    $adminsubtitle = $cot_groups[$g]['name'];
}

if($ic == 'message' || $ic == 'admin') {
    $adminsubtitle =  cot::$L['adm_code'][$ic];

} elseif($ic == 'plug')  {
    if(isset($cot_plugins_enabled[$io])) $adminsubtitle = $cot_plugins_enabled[$io]['title'];

} elseif($ic == 'structure') {
    $adminsubtitle = cot::$L['Structure'];

} else {
    if(isset($io) && $io != 'a' && isset(cot::$structure[$ic][$io])) {
        $adminsubtitle = cot::$structure[$ic][$io]['title'];

    } elseif(isset($cot_modules[$ic])) {
        $adminsubtitle = $cot_modules[$ic]['title'];
    }
}

