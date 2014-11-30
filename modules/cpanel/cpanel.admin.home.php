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
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

// Redirect to cpanel module
if($cfg['admintheme'] == 'cpanel') cot_redirect(cot_url('cpanel'));
