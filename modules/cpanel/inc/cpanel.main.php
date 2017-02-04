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
class cpanel_MainController{

    public function indexAction(){
        global $usr, $db_plugins, $db_updates, $db, $cache, $db_stats, $db_users, $db_groups_users, $db_pages, $db_forum_topics,
               $db_forum_posts, $db_pm, $L, $sys, $cfg, $db_logger, $db_referers, $db_trash, $db_com;

        $tpl = cot_tplfile(array('cpanel', 'admin', 'index'));

        if (!cot::$cfg['debug_mode'] && file_exists('install.php') && is_writable('datas/config.php')){
            cot_error('home_installable_error');
        }

        cot::$out['subtitle'] = cot::$L['Administration'];

        $t = new XTemplate($tpl);

        //Version Checking
        if (cot::$cfg['check_updates'] && cot::$cache) {
            $update_info = cot::$cache->db->get('update_info');
            if (!$update_info) {
                if (ini_get('allow_url_fopen')) {
                    $update_info = @file_get_contents('http://www.cotonti.com/update-check');
                    if ($update_info) {
                        $update_info = json_decode($update_info, TRUE);
                        cot::$cache->db->store('update_info', $update_info, COT_DEFAULT_REALM, 86400);
                    }
                } elseif (function_exists('curl_init')) {
                    $curl = curl_init();
                    curl_setopt($curl, CURLOPT_URL, 'http://www.cotonti.com/update-check');
                    curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
                    $update_info = curl_exec($curl);
                    if ($update_info) {
                        $update_info = json_decode($update_info, TRUE);
                        cot::$cache->db->store('update_info', $update_info, COT_DEFAULT_REALM, 86400);
                    }
                    curl_close($curl);
                }
            }
            if ($update_info['update_ver'] > cot::$cfg['version']) {
                $t->assign(array(
                    'ADMIN_HOME_UPDATE_REVISION' => sprintf(cot::$L['home_update_revision'], cot::$cfg['version'],
                        htmlspecialchars($update_info['update_ver'])),
                    'ADMIN_HOME_UPDATE_MESSAGE' => cot_parse($update_info['update_message']),
                ));
                $t->parse('MAIN.UPDATE');
            }
        }

        $sql = cot::$db->query("SHOW TABLES");
        foreach ($sql->fetchAll(PDO::FETCH_NUM) as $row) {
            $table_name = $row[0];
            $status = cot::$db->query("SHOW TABLE STATUS LIKE '$table_name'");
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

        $totalplugins = cot::$db->query("SELECT DISTINCT(pl_code) FROM $db_plugins WHERE 1 GROUP BY pl_code")->rowCount();
        $totalhooks = cot::$db->query("SELECT COUNT(*) FROM $db_plugins")->fetchColumn();

        $t->assign(array(
            'ADMIN_HOME_DB_TOTAL_ROWS' => $total_rows,
            'ADMIN_HOME_DB_INDEXSIZE' => number_format(($total_index_length / 1024), 1, '.', ' '),
            'ADMIN_HOME_DB_DATASSIZE' => number_format(($total_data_length / 1024), 1, '.', ' '),
            'ADMIN_HOME_DB_TOTALSIZE' => number_format(($total_length / 1024), 1, '.', ' '),
            'ADMIN_HOME_TOTALPLUGINS' => $totalplugins,
            'ADMIN_HOME_TOTALHOOKS' => $totalhooks,
            'ADMIN_HOME_VERSION' => cot::$cfg['version'],
            'ADMIN_HOME_DB_VERSION' => htmlspecialchars(cot::$db->query("SELECT upd_value FROM $db_updates WHERE upd_param = 'revision'")->fetchColumn()),

            'ADMIN_TITLE' => cot::$L['Main'],
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

    public function phpinfoAction(){

        cot::$out['subtitle'] = 'php info - '.cot::$L['Administration'];

        ob_start();
        ob_implicit_flush(false);
        phpinfo();

        Resources::linkFileFooter(cot::$cfg['themes_dir'].'/admin/cpanel/css/phpinfo.css');

        return '<div id="php-info">'.ob_get_clean().'</div>';
    }
}
