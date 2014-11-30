/**
 * module Avto for Cotonti Siena
 *
 * @package Avto
 * @author Alex
 * @copyright (c) 2014 Portal30 Studio http://portal30.ru
 */
$('.filter-block-title').click(function(e){
    e.preventDefault();

    var me = $(this);
    var parent = $(this).parent();

    var id = parent.attr('id');

    $(parent).children('.filter-block-content').slideToggle('fast', function() {
        // Animation complete.
        if($(this).css('display') == 'block'){
            me.children('span').removeClass('caret-right').addClass('caret');
            createCookie(id, 0, 30);
        }else{
            me.children('span').removeClass('caret').addClass('caret-right');
            createCookie(id, 1, 30);    // 1 - закрыто
        }
    });
});

$( document ).on( 'change', '#filter-form select', function(e) {
    $('#filter-form').submit();
});

$( document ).on( 'change', '#filter-form input[type="checkbox"]', function(e) {
    $('#filter-form').submit();
});

$('#auto-content-addrow').click(function(e){
    e.preventDefault();

    var newBlock = $('#auto-content-row_1').clone();
    newBlock.find('select.fbrand').val('');
    newBlock.find('select.fauto').html('<option value="">---</option>');

    var delMe = $('<a>', {href: '#', class: 'red auto-content-remove'}).html('<span class="glyphicon glyphicon-remove"></span> удалить эту марку').appendTo(newBlock);

    newBlock.insertBefore(this);
});

$( document ).on( 'click', '.auto-content-remove', function(e) {
    e.preventDefault();

    var parent =  $(this).parent('.auto-content-row');

    var fbrand = parent.find('select.fbrand').val();
    var fauto = parent.find('select.fauto').val();

    parent.remove();
    // Если не пустые селекты, то сабмит
    if(fbrand > 0 || fauto > 0) $('#filter-form').submit();
});

/**
 * Очистка параметров поиска
 */
$('#filter-clear').click(function(e){
    e.preventDefault();

    $('#search-result').html('');
    $('#select-params').slideDown();
    $('#filter-form select.fauto').html('<option value="">---</option>');
    $('#filter-form select').val('');
    $('#filter-form input[type="text"]').val('');
    $('#filter-form input[type="checkbox"]').removeAttr('checked');
    $('#equipments-show-all-cont').remove();
});

/**
 * Убрать из запроса лишние параметры
 */
$('#filter-form').submit(function(e){
    $('#filter-form input[type="text"][value=""]').attr('disabled', 'disabled');
    $('#filter-form input[type="checkbox"]:not(:checked)').attr('disabled', 'disabled');
    $('#filter-form select').each(function(){
        if($(this).val() == '') $(this).attr('disabled', 'disabled');
    })
});

$('.equipments-show').click(function(e){
    e.preventDefault();

    var parent =  $(this).parents('.equipments');

    if($(this).hasClass('caret-closed')){
        parent.find('tr.toggle').slideDown();
        $(this).removeClass('caret-closed').addClass('caret-open').html('Свернуть');
    }else{
        parent.find('tr.toggle').hide();
        $(this).removeClass('caret-open').addClass('caret-closed').html('Показать еще комплектации ('+
            $(this).attr('data-count') +')');
    }
});

$( document ).on( 'change', '#equipments-show-all', function(e) {
    var me = $(this);
    var needShow = false;
    if(me.attr('checked') == 'checked') needShow = true;

    $('.equipments').each(function(){
        if(needShow){
            $(this).find('tr.toggle').show();
            $(this).find('.equipments-show').removeClass('caret-closed').addClass('caret-open').html('Свернуть');
        }else{
            $(this).find('tr.toggle').hide();
            var showLink = $(this).find('.equipments-show');
            showLink.removeClass('caret-open').addClass('caret-closed').html('Показать еще комплектации ('+
                showLink.attr('data-count') +')');
        }

    });
});