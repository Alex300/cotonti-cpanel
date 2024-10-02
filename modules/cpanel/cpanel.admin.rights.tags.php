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
 * @subpackage Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Lily Software https://lily-software.com
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

global $cot_groups;

$adminTitle = !empty($adminSubtitle) ? $adminSubtitle : Cot::$L['Rights'];
$adminSubtitle = '';
if (!empty($g) && !empty($cot_groups[$g])) {
    $adminSubtitle = $cot_groups[$g]['name'];
}
