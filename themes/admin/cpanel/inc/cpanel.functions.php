<?php
/**
 * Cpanel Admin Theme
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL.');

/**
 * Класс для элемента формы
 * @param $name
 * @return string
 */
function cot_formGroupClass($name){
    global $cfg;

    $error = $cfg['msg_separate'] ? cot_implode_messages($name, 'error') : '';
    if($error) return 'has-error';

    return '';
}

function cot_inc_var($name, $value) {
    if(!isset($GLOBALS[$name])) $GLOBALS[$name] = 0;
    $GLOBALS[$name] += $value;
}