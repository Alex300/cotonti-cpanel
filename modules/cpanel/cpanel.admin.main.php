<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.main
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

if (defined('COT_ADMIN') && cot::$cfg['admintheme'] == 'cpanel') {
    require_once cot_incfile('cpanel', 'module');

    // Cpanel Settings
    $admin_cfg = array(
        // Panel for content will be created automatically
        // Turn it off to use custom panels or no use any panels
        'useDefaultPanel' => 1,

        // Default panel title
        'panelTitle' => null,
    );
}
