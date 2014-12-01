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
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL');

if (!COT_AJAX && defined('COT_ADMIN') && $cfg['admintheme'] == 'cpanel'){

    $user_avatar = cot_rc('files_user_default_avatar');
    if(cot_module_active('files')){
        require_once cot_incfile('files', 'module');
        $user_avatar = cot_files_user_avatar($usr['profile']['user_avatar'], $usr['profile']['user_avatar']);
    } elseif(cot_plugin_active('userimages')) {
        require_once cot_incfile('userimages', 'plug');
        $user_avatar = cot_userimages_build($usr['profile']['user_avatar'], 'avatar');
    }

    $admin_MenuUser['divider'] = array('class' => 'divider');
    $admin_MenuUser['logout'] = array(
        'title' => $L['Logout'],
        'url' => $out['loginout_url'],
        'icon_class' => 'fa fa-times-circle',
    );

    $t->assign(array (
        'HEADER_MENU_TOP'   => cot_renderMenu('admin.menu.top', $admin_MenuTop, 1),
        'HEADER_MENU_SIDE'  => cot_renderMenu('admin.menu.side', $admin_MenuSide, 1),
        'HEADER_MENU_USER'  => cot_renderMenu('admin.menu.user', $admin_MenuUser, 1),
        'HEADER_NOTICES_COUNT' => (!empty($out['notices_array'])) ? count($out['notices_array']) : 0,
        'HEADER_USER_AVATAR' => $user_avatar,
        'HEADER_USER_FULL_NAME' => htmlspecialchars(cot_user_full_name($usr['profile'])),
    ));
}
