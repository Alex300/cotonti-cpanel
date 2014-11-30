<?php
/**
 * Cpanel Admin Theme
 *
 * @package Cotonti
 * @subpackage  Admin
 * @author Alex - Studio Portal30
 * @copyright Portal30 2014 http://portal30.ru
 */
defined('COT_CODE') or die('Wrong URL.');

require_once cot::$cfg['themes_dir'].'/admin/cpanel/inc/cpanel.functions.php';

$R['breadcrumbs_container'] = '<ol class="breadcrumb pull-right">{$crumbs}</ol>'."\n";
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

/**
 * Forms
 */
$R['input_select'] = '<select name="{$name}" class="form-control" {$attrs}>{$options}</select>{$error}';
$R['input_submit'] = '<button type="submit" name="{$name}" class="form-control" {$attrs}>{$value}</button>';
$R['input_text'] = '<input type="text" name="{$name}" value="{$value}" class="form-control" {$attrs} />{$error}';
$R['input_textarea'] = '<textarea name="{$name}" rows="{$rows}" cols="{$cols}" class="form-control" {$attrs}>{$value}</textarea>{$error}';

/**
 * Pagination
 */
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}<span class="sr-only">(current)</span></a></li>';
$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_gap'] = '<li class="disabled">...</li>';
$R['link_pagenav_first'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_first'].'</span><span class="sr-only">First</span></a></li>';
$R['link_pagenav_prev'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_prev'].'</span><span class="sr-only">Prev</span></a></li>';
$R['link_pagenav_next'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_next'].'</span><span class="sr-only">Next</span></a></li>';
$R['link_pagenav_last'] = '<li><a href="{$url}"{$event}{$rel}><span aria-hidden="true">'.$L['pagenav_last'].'</span><span class="sr-only">Last</span></a></li>';
