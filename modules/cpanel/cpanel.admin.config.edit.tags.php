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

if (!empty(Cot::$cfg['admintheme']) && Cot::$cfg['admintheme'] == 'cpanel') {
    $configTitle = '';
    if ($o == 'core') {
        $configTitle = Cot::$L['core_' . $p];
    } else {
        $configTitle = $ext_info['name'];
    }

    CPanel::$panelTitle = $configTitle;

    $admintitle = !empty($adminsubtitle) ? $adminsubtitle : Cot::$L['Configuration'];
    $adminsubtitle = CPanel::$panelTitle;

    $t->assign(array(
        'ADMIN_CONFIG_EDIT_TITLE' => $configTitle,
    ));
}