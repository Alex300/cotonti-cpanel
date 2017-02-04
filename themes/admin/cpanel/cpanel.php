<?php
/**
 * Cpanel Admin Theme
 *
 * @package Cotonti
 * @subpackage  Admin
 *
 * @author Kalnov Alexey <kalnovalexey@yandex.ru>
 * @copyright © Portal30 Studio http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL.');

require_once cot::$cfg['themes_dir'].'/admin/cpanel/inc/cpanel.functions.php';

$R['breadcrumbs_container'] = '<ol class="breadcrumb">{$crumbs}</ol>'."\n";
$R['breadcrumbs_separator'] = "\n";
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_crumb'] = '<li>{$crumb}</li>';
$R['breadcrumbs_first'] = '<li>{$crumb}</li>';
$R['breadcrumbs_last']  = '<li>{$crumb}</li>';

$R['notices_container'] = '{$notices}';
$R['notices_separator'] = "\n";
$R['notices_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['notices_plain'] = '{$title}';
$R['notices_notice'] = '<li class="media">{$notice}</li>';

$R['user_default_avatar'] = '<img src="datas/defaultav/blank.png" alt="'.cot::$L['Avatar'].'" class="avatar" />';

/**
 * Forms
 */
$R['input_select']   = '<select name="{$name}" {$attrs} class="form-control">{$options}</select>{$error}';
$R['input_submit']   = '<button type="submit" name="{$name}" {$attrs} class="form-control" >{$value}</button>';
$R['input_text']     = '<input type="text" name="{$name}" value="{$value}" {$attrs} class="form-control" />{$error}';
$R['input_textarea'] = '<textarea name="{$name}" rows="{$rows}" cols="{$cols}" {$attrs} class="form-control">{$value}</textarea>{$error}';
$R['input_check']    = '<div class="checkbox"><label><input type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label></div>';
$R['input_checkbox'] = '<div class="checkbox"><input type="hidden" name="{$name}" value="{$value_off}" /><label>'.
    '<input type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label></div>';
$R['input_radio'] = '<div class="radio"><label><input type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label></div>';

/**
 * Pagination
 */
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}<span class="sr-only">(current)</span></a></li>';
$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_gap'] = '<li class="disabled"><span>...</span></li>';
$R['link_pagenav_first'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_first'].'</span><span class="sr-only">First</span></a></li>';
$R['link_pagenav_prev'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_prev'].'</span><span class="sr-only">Prev</span></a></li>';
$R['link_pagenav_next'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_next'].'</span><span class="sr-only">Next</span></a></li>';
$R['link_pagenav_last'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_last'].'</span><span class="sr-only">Last</span></a></li>';

require_once cot::$cfg['themes_dir'].'/admin/cpanel/cpanel.rc.php';