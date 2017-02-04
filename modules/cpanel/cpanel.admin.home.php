<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.home
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

// Redirect to cpanel module
if(cot::$cfg['admintheme'] == 'cpanel' && basename($_SERVER['PHP_SELF']) == 'admin.php') cot_redirect(cot_url('cpanel'));
