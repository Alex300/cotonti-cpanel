<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=module
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
defined('COT_CODE') or die('Wrong URL');

// Self requirements (if needed)
// require_once cot_incfile($env['ext'], 'module');

// Default controller
if(empty($m)) $m = 'main';

// Default ACL
//list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth($env['ext'], 'a');
//cot_block($usr['isadmin']);
list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('admin', 'any');
cot_block($usr['auth_read']);

if(empty($out['head'])) $out['head'] = '';
cot::$out['head'] .= $R['code_noindex'];

$controllerFile = cot_incfile($env['ext'], $env['type'], $m);

// Only if the file exists...
if (file_exists($controllerFile)) {
    require_once $controllerFile;

    /* Create the controller */
    $_class = $env['ext'].'_'.ucfirst($m).'Controller';
    $controller = new $_class();

    /* Perform the Request task */
    $currentAction = $a.'Action';
    if (!$a && method_exists($controller, 'indexAction')){
        $outContent = $controller->indexAction();
    }elseif (method_exists($controller, $currentAction)){
        $outContent = $controller->$currentAction();
    }else{
        // Error page
        cot_die_message(404);
        exit;
    }

    //ob_clean();
    require_once $cfg['system_dir'] . '/header.php';
    if (isset($outContent)) echo $outContent;
    require_once $cfg['system_dir'] . '/footer.php';
}else{
    // Error page
    cot_die_message(404);
    exit;
}