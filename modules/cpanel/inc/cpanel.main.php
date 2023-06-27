<?php
defined('COT_CODE') or die('Wrong URL');

if (cot_plugin_active('comments')) {
    require_once cot_incfile('comments', 'plug');
}

/**
 * Cpanel Main Controller
 *
 * @package Cpanel
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Lily Software https://lily-software.com
 */
class cpanel_MainController
{
    public function indexAction()
    {
        // These globals may be needed for plugins
        global $usr, $db_plugins, $db_updates, $db, $cache, $db_stats, $db_users, $db_groups_users, $db_pages, $db_forum_topics,
               $db_forum_posts, $db_pm, $L, $sys, $cfg, $db_logger, $db_referers, $db_trash, $db_com;

        $tpl = cot_tplfile(array('cpanel', 'admin', 'index'));

        if (!Cot::$cfg['debug_mode'] && file_exists('install.php') && is_writable('datas/config.php')){
            cot_error('home_installable_error');
        }

        Cot::$out['subtitle'] = Cot::$L['Administration'];

        $t = new XTemplate($tpl);

        //Version Checking
        if (Cot::$cfg['check_updates'] && Cot::$cache) {
            $updateInfo = Cot::$cache->db->get('update_info');
            if (empty($updateInfo)) {
                $url = 'https://www.cotonti.com/?r=updatecheck';
                // $url = 'https://www.cotonti.com/update-check';
                $userAgent = 'Cotonti v.' . Cot::$cfg['version'];
                if (ini_get('allow_url_fopen')) {
                    $updateInfo = @file_get_contents($url, false, stream_context_create([
                            'http' => ['method'=>"GET", 'header' => 'User-Agent: ' . $userAgent]
                        ])
                    );
                }

                if (empty($updateInfo) && function_exists('curl_init')) {
                    $curl = curl_init();
                    curl_setopt($curl, CURLOPT_URL, $url);
                    curl_setopt($curl, CURLOPT_USERAGENT, $userAgent);
                    curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
                    $updateInfo = curl_exec($curl);
                    curl_close($curl);
                }

                if ($updateInfo) {
                    $updateInfo = json_decode($updateInfo, TRUE);
                }
                if (empty($updateInfo)) {
                    // Negative result should be cached too
                    $updateInfo = 'a';
                }
                Cot::$cache->db->store('update_info', $updateInfo, COT_DEFAULT_REALM, 86400);
            }
            if (
                !empty($updateInfo)
                && $updateInfo != 'a'
                && version_compare($updateInfo['update_ver'], Cot::$cfg['version'], '>')
            ) {
                $updateInfo_message = $updateInfo['update_message']; //backward compatibility with non localized updatecheck plug
                if (is_array($updateInfo['update_message_lng'])) {
                    if (isset($updateInfo['update_message_lng'][$usr['lang']])) {
                        $updateInfo_message = $updateInfo['update_message_lng'][Cot::$usr['lang']];
                    } elseif (
                        Cot::$usr['lang'] != Cot::$cfg['defaultlang']
                        && isset($updateInfo['update_message_lng'][Cot::$cfg['defaultlang']])
                    ) {
                        $updateInfo_message = $updateInfo['update_message_lng'][Cot::$cfg['defaultlang']];
                    } elseif (isset($updateInfo['update_message_lng']['en'])) {
                        $updateInfo_message = $updateInfo['update_message_lng']['en'];
                    }
                }

                $t->assign(array(
                    'ADMIN_HOME_UPDATE_REVISION' => sprintf(
                        Cot::$L['home_update_revision'],
                        Cot::$cfg['version'],
                        htmlspecialchars($updateInfo['update_ver'])
                    ),
                    'ADMIN_HOME_UPDATE_MESSAGE' => cot_parse($updateInfo_message),
                ));
                $t->parse('MAIN.UPDATE');
            }
        }

        $t->assign(array(
            'ADMIN_TITLE' => Cot::$L['Main'],
        ));

        /* === Hook === */
        foreach (cot_getextplugins('admin.home.mainpanel', 'R') as $pl) {
            $line = '';
            include $pl;
            if (!empty($line))
            {
                $t->assign('ADMIN_HOME_MAINPANEL', $line);
                $t->parse('MAIN.MAINPANEL');
            }
        }
        /* ===== */

        /* === Hook === */
        foreach (cot_getextplugins('admin.home.sidepanel', 'R') as $pl)
        {
            $line = '';
            include $pl;
            if (!empty($line))
            {
                $t->assign('ADMIN_HOME_SIDEPANEL', $line);
                $t->parse('MAIN.SIDEPANEL');
            }
        }
        /* ===== */

        /* === Hook === */
        foreach (cot_getextplugins('admin.home', 'R') as $pl)
        {
            include $pl;
        }
        /* ===== */


        // Error and message handling
        cot_display_messages($t);

        $t->parse();
        return $t->text();

    }
}
