<?php
/**
 * Cpanel Admin Theme
 * Load resources
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Portal30 Studio http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL.');

if(Resources::getAlias('@bootstrap.js') === null) Resources::setAlias('@bootstrap.js', 'lib/bootstrap/js/bootstrap.min.js');
if(Resources::getAlias('@bootstrap.css') === null) Resources::setAlias('@bootstrap.css', 'lib/bootstrap/css/bootstrap.min.css');
if(Resources::getAlias('@bootstrapTheme.css') === null) {
    Resources::setAlias('@bootstrapTheme.css', 'lib/bootstrap/css/bootstrap-theme.min.css');
}

if(Resources::getAlias('@fontAwesome.css') === null) Resources::setAlias('@fontAwesome.css', 'lib/font-awesome/css/font-awesome.min.css');

Resources::addFile('@bootstrap.css');
Resources::addFile('@bootstrapTheme.css');
Resources::addFile('@fontAwesome.css');
Resources::addFile('themes/admin/cpanel/css/animate.css', 'css', 200);
Resources::addFile('themes/admin/cpanel/css/theme.css', 'css', 200);
Resources::addFile('themes/admin/cpanel/css/theme-responsive.css', 'css', 200);
Resources::addFile('themes/admin/cpanel/css/typography.css', 'css', 200);


Resources::linkFileFooter('@bootstrap.js');
Resources::linkFileFooter(cot::$cfg['themes_dir'].'/admin/cpanel/js/slimscroll/jquery.slimscroll.min.js', 'js', 200);
Resources::linkFileFooter(cot::$cfg['themes_dir'].'/admin/cpanel/js/masonry.pkgd.min.js', 'js', 200);
Resources::linkFileFooter(cot::$cfg['themes_dir'].'/admin/cpanel/js/cpanel.js', 'js', 300);
