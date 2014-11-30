<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=input
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
defined('COT_CODE') or die('Wrong URL');

if(!empty($_GET['e']) && $_GET['e'] == 'cpanel'){
    define('COT_ADMIN', TRUE);
    $env['location'] = 'administration';
}