<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=header.tags
Tags=header.tpl:{HEADER_MENU_TOP},{HEADER_MENU_SIDE},{HEADER_MENU_USER},{HEADER_NOTICES_COUNT},{HEADER_USER_AVATAR},{HEADER_USER_FULL_NAME}
Order=50
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

if (!COT_AJAX && defined('COT_ADMIN') && cot::$cfg['admintheme'] == 'cpanel'){

    $user_avatar = cot_rc('user_default_avatar');
    if(cot_module_active('files')){
        require_once cot_incfile('files', 'module');
        $user_avatar = cot_files_user_avatar(cot::$usr['profile']['user_avatar'], cot::$usr['profile']['user_avatar']);

    } elseif(cot_plugin_active('userimages')) {
        require_once cot_incfile('userimages', 'plug');
        $user_avatar = cot_userimages_build(cot::$usr['profile']['user_avatar'], 'avatar');
    }

    $admin_MenuUser['divider'] = array('class' => 'divider');
    $admin_MenuUser['logout'] = array(
        'title' => cot::$L['Logout'],
        'url' => cot::$out['loginout_url'],
        'icon_class' => 'fa fa-times-circle',
    );

    if(!empty($out['notices_array'])){
        foreach($out['notices_array'] as $key => $val){
            if(empty($val)) unset($out['notices_array'][$key]);
        }
    }

    $t->assign(array (
        'HEADER_MENU_TOP'   => cot_renderMenu('admin.menu.top',  cpanel::$menu['top'],  1),
        'HEADER_MENU_SIDE'  => cot_renderMenu('admin.menu.side', cpanel::$menu['side'], 1),
        'HEADER_MENU_USER'  => cot_renderMenu('admin.menu.user', cpanel::$menu['user'], 1),
        'HEADER_NOTICES_COUNT' => (!empty(cot::$out['notices_array'])) ? count(cot::$out['notices_array']) : 0,
        'HEADER_USER_AVATAR' => $user_avatar,
        'HEADER_USER_FULL_NAME' => htmlspecialchars(cot_user_full_name(cot::$usr['profile'])),
    ));
}
