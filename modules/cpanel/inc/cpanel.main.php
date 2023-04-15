<?php
defined('COT_CODE') or die('Wrong URL');

if(cot_plugin_active('comments')) require_once cot_incfile('comments', 'plug');

/**
 * Cpanel Main Controller
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Portal30 Studio http://portal30.ru
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
                !empty($updateInfo) &&
                $updateInfo != 'a' &&
                version_compare($updateInfo['update_ver'], Cot::$cfg['version'], '>')
            ) {
                $t->assign(array(
                    'ADMIN_HOME_UPDATE_REVISION' => sprintf(
                        Cot::$L['home_update_revision'],
                        Cot::$cfg['version'],
                        htmlspecialchars($updateInfo['update_ver'])
                    ),
                    'ADMIN_HOME_UPDATE_MESSAGE' => cot_parse($updateInfo['update_message']),
                ));
                $t->parse('MAIN.UPDATE');
            }
        }

        $sql = Cot::$db->query("SHOW TABLES");
        foreach ($sql->fetchAll(PDO::FETCH_NUM) as $row) {
            $table_name = $row[0];
            $status = Cot::$db->query("SHOW TABLE STATUS LIKE '$table_name'");
            $status1 = $status->fetch();
            $status->closeCursor();
            $tables[] = $status1;
        }

        $total_length = 0;
        $total_rows = 0;
        $total_index_length = 0;
        $total_data_length = 0;
        foreach ($tables as $dat) {
            $table_length = $dat['Index_length'] + $dat['Data_length'];
            $total_length += $table_length;
            $total_rows += $dat['Rows'];
            $total_index_length += $dat['Index_length'];
            $total_data_length += $dat['Data_length'];
        }

        $totalplugins = Cot::$db->query("SELECT DISTINCT(pl_code) FROM $db_plugins WHERE 1 GROUP BY pl_code")->rowCount();
        $totalhooks = Cot::$db->query("SELECT COUNT(*) FROM $db_plugins")->fetchColumn();

        $t->assign(array(
            'ADMIN_HOME_DB_TOTAL_ROWS' => $total_rows,
            'ADMIN_HOME_DB_INDEXSIZE' => number_format(($total_index_length / 1024), 1, '.', ' '),
            'ADMIN_HOME_DB_DATASSIZE' => number_format(($total_data_length / 1024), 1, '.', ' '),
            'ADMIN_HOME_DB_TOTALSIZE' => number_format(($total_length / 1024), 1, '.', ' '),
            'ADMIN_HOME_TOTALPLUGINS' => $totalplugins,
            'ADMIN_HOME_TOTALHOOKS' => $totalhooks,
            'ADMIN_HOME_VERSION' => Cot::$cfg['version'],
            'ADMIN_HOME_DB_VERSION' => htmlspecialchars(Cot::$db->query("SELECT upd_value FROM $db_updates WHERE upd_param = 'revision'")->fetchColumn()),

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
