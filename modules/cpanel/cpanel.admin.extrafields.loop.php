<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.extrafields.loop
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
(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

$t->assign(array(
    'ADMIN_EXTRAFIELDS_ROW_NAME' => cot_inputbox('text', 'field_name['.$row['field_name'].']', $row['field_name'],
        array('class'=>'exfldname form-control', 'data-toggle'=>'tooltip', 'data-placement'=>'right')),
    'ADMIN_EXTRAFIELDS_ROW_DESCRIPTION' => cot_textarea('field_description['.$row['field_name'].']', $row['field_description'],
        1, 30, array('class'=>'exflddesc form-control', 'data-toggle'=>'tooltip', 'data-placement'=>'right')),
    'ADMIN_EXTRAFIELDS_ROW_SELECT' => cot_selectbox($row['field_type'], 'field_type['.$row['field_name'].']', $field_types, $field_types, false, 'class="exfldtype form-control"'),
    'ADMIN_EXTRAFIELDS_ROW_VARIANTS' => cot_textarea('field_variants['.$row['field_name'].']', $row['field_variants'], 1, 60,
        array('class'=>'exfldvariants form-control', 'data-toggle'=>'tooltip')),
    'ADMIN_EXTRAFIELDS_ROW_PARAMS' => cot_textarea('field_params['.$row['field_name'].']', $row['field_params'], 1, 60,
        array('class'=>'exfldparams form-control', 'data-toggle'=>'tooltip')),
    'ADMIN_EXTRAFIELDS_ROW_HTML' => cot_textarea('field_html['.$row['field_name'].']', $row['field_html'], 1, 60, 'class="exfldhtml form-control"'),
    'ADMIN_EXTRAFIELDS_ROW_DEFAULT' => cot_textarea('field_default['.$row['field_name'].']', $row['field_default'], 1, 60, 'class="exflddefault form-control"'),
    'ADMIN_EXTRAFIELDS_ROW_REQUIRED' => cot_checkbox($row['field_required'], 'field_required['.$row['field_name'].']',
        $L['adm_extrafield_required'], 'class="exfldrequired"'),
    'ADMIN_EXTRAFIELDS_ROW_ENABLED' => cot_checkbox($row['field_enabled'], 'field_enabled['.$row['field_name'].']', '',
        array('title' => $L['adm_extrafield_enable'], 'class'=>'exfldenabled', 'data-toggle'=>'tooltip')),
    'ADMIN_EXTRAFIELDS_ROW_PARSE' => cot_selectbox($row['field_parse'], 'field_parse['.$row['field_name'].']',
        $parse_type, array($L['Default'], $L['No']), false, 'class="exfldparse form-control"'),
));