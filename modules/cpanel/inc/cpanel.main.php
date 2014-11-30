<?php
defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('comments', 'plug');

/**
 * Cpanel Main Controller
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
class cpanel_MainController{

    public function indexAction(){

    }

    public function phpinfoAction(){
        ob_start();
        ob_implicit_flush(false);
        phpinfo();
        return ob_get_clean();
    }
}
