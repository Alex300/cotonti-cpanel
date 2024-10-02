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
 * @package Cpanel
 * @author Alexey Kalnov <kalnovalexey@yandex.ru>
 * @copyright © Lily Software https://lily-software.com
 */
defined('COT_CODE') or die('Wrong URL');

if (
    !COT_AJAX &&
    defined('COT_ADMIN') &&
    isset(Cot::$cfg['admintheme']) &&
    Cot::$cfg['admintheme'] == 'cpanel'
) {

    $user_avatar = cot_rc('user_default_avatar');
    if (cot_module_active('files')) {
        require_once cot_incfile('files', 'module');
        $user_avatar = cot_filesUserAvatar(Cot::$usr['profile']['user_avatar'], Cot::$usr['profile']['user_avatar']);

    } elseif (cot_plugin_active('userimages')) {
        require_once cot_incfile('userimages', 'plug');
        $user_avatar = cot_userimages_build(Cot::$usr['profile']['user_avatar'], 'avatar');
    }

    $admin_MenuUser['divider'] = array('class' => 'divider');
    $admin_MenuUser['logout'] = array(
        'title' => Cot::$L['Logout'],
        'url' => Cot::$out['loginout_url'],
        'icon_class' => 'fa fa-times-circle',
    );

    if(!empty($out['notices_array'])){
        foreach($out['notices_array'] as $key => $val){
            if(empty($val)) unset($out['notices_array'][$key]);
        }
    }

    $t->assign(array (
        'HEADER_MENU_TOP'   => cot_renderMenu('admin.menu.top',  CPanel::$menu['top'],  1),
        'HEADER_MENU_SIDE'  => cot_renderMenu('admin.menu.side', CPanel::$menu['side'], 1),
        'HEADER_MENU_USER'  => cot_renderMenu('admin.menu.user', CPanel::$menu['user'], 1),
        'HEADER_NOTICES_COUNT' => (!empty(Cot::$out['notices_array'])) ? count(Cot::$out['notices_array']) : 0,
        'HEADER_USER_AVATAR' => $user_avatar,
        'HEADER_USER_FULL_NAME' => htmlspecialchars(cot_user_full_name(Cot::$usr['profile'])),
    ));
}
