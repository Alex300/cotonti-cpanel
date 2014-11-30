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
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

$configTitle = '';
if ($o == 'core') {
    $configTitle = $L['core_' . $p];
} else {
    $configTitle = $ext_info['name'];
}
$t->assign(array(
    'ADMIN_CONFIG_EDIT_TITLE' => $configTitle,
));