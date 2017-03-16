<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=header.first
Order=5
[END_COT_EXT]
==================== */
/**
 * Cpanel Module
 *
 * Theme settings
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Portal30 Studio http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL');

if (!COT_AJAX && defined('COT_ADMIN') && cot::$cfg['admintheme'] == 'cpanel') {

    require_once cot_incfile('cpanel', 'module');

    // System menus
    cpanel::$menu['top'] = array(
        'extensions' => array(
            'title' => cot::$L['Extensions'],
            'url' => cot_url('admin', 'm=extensions'),
            'icon_class' => 'fa fa-plug',
        ),
        'users' => array(
            'title' => cot::$L['Users'],
            'url' => cot_url('admin', 'm=extensions'),
            'icon_class' => 'fa fa-users',
            'items' => array(
                array(
                    'title' => cot::$L['Users'],
                    'url' => cot_url('users'),
                ),
                array(
                    'title' => cot::$L['Groups'],
                    'url' => cot_url('admin', 'm=users'),
                ),
                array(
                    'title' => cot::$L['Configuration'],
                    'url' => cot_url('admin', array('m'=>'config','n'=>'edit','o'=>'module','p'=>'users')),
                ),
            )
        ),
        'view_site' => array(
            'title' => cot::$L['hea_viewsite'],
            'url' => cot::$cfg['mainurl'],
            'icon_class' => 'fa fa-globe',
        ),
        'help' => array(
            'title' => cot::$L['Help'],
            'icon_class' => 'fa fa-question-circle',
            'items' => array(
                array(
                    'title' => cot::$L['System'],
                    'url' => cot_url('admin', 'm=infos'),
                    'icon_class' => 'glyphicon glyphicon-file',
                ),
                array(
                    'title' => 'php',
                    'url' => cot_url('cpanel', 'a=phpinfo'),
                    'icon_class' => 'glyphicon glyphicon-info-sign',
                ),
            )
        )
    );

    cpanel::$menu['side'] = array(
        'home' => array(
            'title' => cot::$L['Home'],
            'url' => cot_url('cpanel'),
            'icon_class' => 'fa fa-desktop',
            'active' => (empty($m) || ($m == 'main' && empty($a) )),
        ),


        'configuration' => array(
            'title' => cot::$L['Configuration'],
            'icon_class' => 'fa fa-wrench',
            'url' => cot_url('admin', 'm=config'),
            'active' => ($m == 'config'),
            'items' => array(
                array(
                    'title' => cot::$L['Locale'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=locale'),
                    'icon_class' => 'fa fa-language',
                    'active' => ($m == 'config' && $p == 'locale'),
                ),
                array(
                    'title' => cot::$L['core_main'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=main'),
                    'icon_class' => 'fa fa-cogs',
                    'active' => ($m == 'config' && $p == 'main'),
                ),
                array(
                    'title' => cot::$L['Menus'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=menus'),
                    'icon_class' => 'fa fa-list-alt',
                    'active' => ($m == 'config' && $p == 'menus'),
                ),
                array(
                    'title' => cot::$L['core_performance'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=performance'),
                    'icon_class' => 'fa fa-tachometer',
                    'active' => ($m == 'config' && $p == 'performance'),
                ),
                array(
                    'title' => cot::$L['Security'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=security'),
                    'icon_class' => 'fa fa-shield',
                    'active' => ($m == 'config' && $p == 'security'),
                ),
                array(
                    'title' => cot::$L['core_sessions'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=sessions'),
                    'icon_class' => 'fa fa-cog',
                    'active' => ($m == 'config' && $p == 'sessions'),
                ),
                array(
                    'title' => cot::$L['Themes'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=theme'),
                    'icon_class' => 'fa fa-picture-o',
                    'active' => ($m == 'config' && $p == 'theme'),
                ),
                array(
                    'title' => cot::$L['core_title'],
                    'url' => cot_url('admin', 'm=config&n=edit&o=core&p=title'),
                    'icon_class' => 'fa fa-header',
                    'active' => ($m == 'config' && $p == 'title'),
                ),
            )
        ),

        'structure' => array(
            'title' => cot::$L['Structure'],
            'url' => cot_url('admin', array('m' => 'structure')),
            'icon_class' => 'fa fa-folder-open',
            'active' => ($m == 'structure'),
        ),

        'extensions' => array(
            'title' => cot::$L['Extensions'],
            'url' => cot_url('admin', array('m' => 'extensions')),
            'icon_class' => 'fa fa-plug',
            'active' => ($m == 'extensions'),
        ),

        'users' => array(
            'title' => cot::$L['Users'],
            'icon_class' => 'fa fa-users',
            'active' => ($m == 'users'),
            'items' => array(
                array(
                    'title' => cot::$L['cpanel_users_list'],
                    'icon_class' => 'fa fa-user',
                    'url' => cot_url('users'),
                ),
                array(
                    'title' => cot::$L['Groups'],
                    'url' => cot_url('admin', array('m' => 'users')),
                    'icon_class' => 'fa fa-users',
                    'active' => ($m == 'users'),
                ),
            ),
        ),

        'other' => array(
            'title' => cot::$L['Other'],
            'icon_class' => 'fa fa-archive',
            'active' => (in_array($m, array('other', 'cache', 'extrafields')) && empty($p) ),
            'url' => cot_url('admin', array('m' => 'other')),
            'items' => array(
                array(
                    'title' => cot::$L['adm_internalcache'],
                    'url' => cot_url('admin', array('m' => 'cache')),
                    'icon_class' => 'fa fa-rocket',
                    'active' => ($m == 'cache' && empty($s)),
                ),
                array(
                    'title' => cot::$L['adm_diskcache'],
                    'url' => cot_url('admin', array('m' => 'cache', 's'=>'disk')),
                    'icon_class' => 'fa fa-hdd-o',
                    'active' => ($m == 'cache' && $s == 'disk'),
                ),
                array(
                    'title' => cot::$L['adm_extrafields'],
                    'url' => cot_url('admin', array('m' => 'extrafields')),
                    'icon_class' => 'fa fa-check-square-o',
                    'active' => ($m == 'extrafields'),
                ),
            ),
        ),
    );

    cpanel::$menu['user'] = array(
        'my_page' => array(
            'title' => 'My page',
            'url' => cot_url('users', 'm=details'),
            'icon_class' => 'fa fa-user',
        ),
        'profile' => array(
            'title' => cot::$L['Profile'],
            'url' => cot_url('users', 'm=profile'),
            'icon_class' => 'fa fa-cog',
        ),
    );

    if(cot_module_active('pfs')){
        $admin_MenuUser['pfs'] = array(
            'title' => cot::$L['PFS'],
            'url' => cot_url('pfs'),
            'icon_class' => 'fa fa-folder-open',
        );

    } elseif(cot_module_active('files')) {
        // todo files module must add this item itself
        $admin_MenuUser['pfs'] = array(
            'title' => cot::$L['PFS'],
            'url' => cot_url('files', 'm=pfs'),
            'icon_class' => 'fa fa-folder-open',
        );
    }
}