<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.extrafields.tags
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
    'ADMIN_EXTRAFIELDS_NAME' => cot_inputbox('text', 'field_name', '', 'class="exfldname form-control"'),
    'ADMIN_EXTRAFIELDS_DESCRIPTION' => cot_textarea('field_description', '', 1, 30, 'class="exflddesc form-control"'),
    'ADMIN_EXTRAFIELDS_SELECT' => cot_selectbox('input', 'field_type', $field_types, $field_types, false, 'class="exfldtype form-control"'),
    'ADMIN_EXTRAFIELDS_VARIANTS' => cot_textarea('field_variants', '', 1, 60, 'class="exfldvariants form-control"'),
    'ADMIN_EXTRAFIELDS_PARAMS' => cot_textarea('field_params', '', 1, 60, 'class="exfldparams form-control"'),
    'ADMIN_EXTRAFIELDS_HTML' => cot_textarea('field_html', '', 1, 60, 'class="exfldhtml form-control"'),
    'ADMIN_EXTRAFIELDS_DEFAULT' => cot_textarea('field_default', '', 1, 60, 'class="exflddefault form-control"'),
    'ADMIN_EXTRAFIELDS_REQUIRED' => cot_checkbox(0, 'field_required', $L['adm_extrafield_required'], 'class="exfldrequired"'),
    'ADMIN_EXTRAFIELDS_PARSE' => cot_selectbox('HTML', 'field_parse', $parse_type, array($L['Default'], $L['No']), false, 'class="exfldparse form-control"'),
    'ADMIN_EXTRAFIELDS_NOALTER' => cot_checkbox(0, 'field_noalter', $L['adm_extrafield_noalter']),
    'ADMIN_EXTRAFIELDS_COUNTER_ROW' => $pagenav['onpage']
));