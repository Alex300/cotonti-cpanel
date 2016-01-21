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

if(!function_exists('cot_formGroupClass')) {
    /**
     * Класс для элемента формы
     * @param $name
     * @return string
     */
    function cot_formGroupClass($name)
    {
        global $currentMessages;

        if (!cot::$cfg['msg_separate']) return '';

        $error = '';
        $error .= cot_implode_messages($name, 'error');

        if ($error) return 'has-error';

        if (!empty($currentMessages[$name]) && is_array($currentMessages[$name])) {
            foreach ($currentMessages[$name] as $msg) {
                if ($msg['class'] == 'error') return 'has-error';
            }
        }

        return '';
    }
}

/**
 * Increment a global variable
 * Template Callback
 * @param string $name
 * @param $value
 */
function cot_inc_var($name, $value) {
    if(!isset($GLOBALS[$name])) $GLOBALS[$name] = 0;
    $GLOBALS[$name] += $value;
}

/**
 * Set a global variable
 * Template Callback
 * @param string $name
 * @param $value
 */
function cot_set_var($name, $value) {
    $GLOBALS[$name] = $value;
}