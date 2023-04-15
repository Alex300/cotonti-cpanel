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
 */
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

if (!empty(Cot::$cfg['admintheme']) && Cot::$cfg['admintheme'] == 'cpanel') {
    require_once cot_incfile('cpanel', 'module');
}
