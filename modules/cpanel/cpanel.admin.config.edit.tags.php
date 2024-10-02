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
 * @subpackage Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Lily Software https://lily-software.com
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

    $adminTitle = !empty($adminSubtitle) ? $adminSubtitle : Cot::$L['Configuration'];
    $adminSubtitle = CPanel::$panelTitle;

    $t->assign([
        'ADMIN_CONFIG_EDIT_TITLE' => $configTitle,
    ]);
}