<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.config.edit.tags
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

global $admin_cfg;

$configTitle = '';
if ($o == 'core') {
    $configTitle = cot::$L['core_' . $p];

} else {
    $configTitle = $ext_info['name'];
}

$admin_cfg['panelTitle'] = $configTitle;

$admintitle = !empty($adminsubtitle) ? $adminsubtitle: cot::$L['Configuration'];
$adminsubtitle = $admin_cfg['panelTitle'];

$t->assign(array(
    'ADMIN_CONFIG_EDIT_TITLE' => $configTitle,
));