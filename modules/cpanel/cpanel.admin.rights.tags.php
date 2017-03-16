<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.rights.tags
[END_COT_EXT]
==================== */
/**
 * Cpanel Module
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Alex - Studio Portal30
 * @copyright Portal30 http://portal30.ru
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

global $cot_groups;

$admintitle = !empty($adminsubtitle) ? $adminsubtitle: cot::$L['Rights'];
$adminsubtitle = '';
if(!empty($g) && !empty($cot_groups[$g])) {
    $adminsubtitle = $cot_groups[$g]['name'];
}
