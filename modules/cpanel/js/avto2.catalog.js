/**
 * module Avto for Cotonti Siena
 *
 * @package Avto
 * @author Alex
 * @copyright (c) 2014 Portal30 Studio http://portal30.ru
 */

/**
 * добавление к сравнению ajax
 */
$( document ).on( 'change', 'input[type="checkbox"].compare', function(e) {

    var eid = $(this).val();
    var x = $('input[name=x]').val();
    var url = 'index.php?e=avto2&m=catalog&a=ajxCompareAdd';

    if($(this).attr('checked') != 'checked'){
        url = 'index.php?e=avto2&m=catalog&a=ajxCompareDelete';
    }

    $.post(url, { eids: eid, x: x }, function(data) {
        if(data.error != ''){
            alert(data.error);
        }else{
            compareCnt = data.count;
            if(data.count > 0){
                $('#compare-widget').slideDown();

                $.each(data.removedIds, function( index, value ) {
                    $('#compare-widget tr#compare-widget-row-'+value).remove();
                    $('input.compare[value="'+ value +'"]').removeAttr('checked');
                });

                $.each(data.added, function( index, value ) {

                    var info = '<a href="'+value.url+'">'+value.title+'</a>';

                    if(value.desc != '') info = info + '<div class="desc" style="margin: 0">'+value.desc+'</div>';
                    if(value.priceFormatted != '') info = info + '<div>Цена от <span class="red">' +
                        value.priceFormatted + ' рублей</span></div>';

                    var tr = $('#compare-widget #compare-widget-row-tpl').clone();
                    tr.attr('id', 'compare-widget-row-'+value.id).attr('class', 'compare-widget-row');
                    var td = tr.children('.compare-widget-row-info').html(info);
                    tr.appendTo('#compare-widget table').slideDown();
                });

//                var toCompareCount = $('input.compare[type="checkbox"]:checked').length;
                if(compareCnt > 1){
                    $('.add-to-compare').fadeIn();
                }else{
                    $('.add-to-compare').fadeOut();
                }

            }else{
                $('#compare-widget tr.compare-widget-row').remove();
                $('#compare-widget').slideUp();
                $('.add-to-compare').fadeOut();
                $('input.compare').removeAttr('checked');
            }
        }
    }, "json").fail(function(){
        var toCompareCount = $('input.compare[type="checkbox"]:checked').length;
        if((toCompareCount > 0 && compareCnt > 0) || toCompareCount > 1){
            $('.add-to-compare').fadeIn();
        }else{
            $('.add-to-compare').fadeOut();
        }
    });
});

$( document ).on( 'click', '.compare-widget-delete', function(e) {
    e.preventDefault();

    if( $(this).attr('data-id') == 'all'){
        var eids = 'all';
    }else{
        var eid = $(this).parents('tr.compare-widget-row').attr('id');
        eid = eid.replace('compare-widget-row-', '');
        var eids = eid;
    }

    var x = $('input[name=x]').val();
    var url = 'index.php?e=avto2&m=catalog&a=ajxCompareDelete';

    $.post(url, { eids: eids, x: x }, function(data) {
        if(data.error != ''){
            alert(data.error);
        }else{
            compareCnt = data.count;
            if(data.count > 0){
                $('#compare-widget').slideDown();

                $.each(data.removedIds, function( index, value ) {
                    $('#compare-widget tr#compare-widget-row-'+value).remove();
                    $('input.compare[value="'+ value +'"]').removeAttr('checked');
                });

//                var toCompareCount = $('input.compare[type="checkbox"]:checked').length;
                if(compareCnt > 1){
                    $('.add-to-compare').fadeIn();
                }else{
                    $('.add-to-compare').fadeOut();
                }

            }else{
                $('#compare-widget tr.compare-widget-row').remove();
                $('#compare-widget').slideUp();
                $('.add-to-compare').fadeOut();
                $('input.compare').removeAttr('checked');
            }
        }
    }, "json").fail(function(){
        alert('Произошла ошибка во время выполнения. Попробуйте позже.');
    });

});


$(function() {

    /**
     * Быстрая навигация по каталогу, выбор авто
     */
    $('#qNavBrand').change(function(){

        var postUrl = 'index.php?e=avto2&m=catalog&a=axjGetAuto';
        var navType = $(this).attr('data-nav-type');
        var slave = $('#qNavAuto');
        //if(navType == 'model'){
        //    postUrl = 'index.php?e=avto2&m=catalog&a=axjGetModel';
        //}

        slave.html('<option value="0">---</option>');

        var bid = $(this).val();
        if(bid == '' || bid == 0) return;

        var brandParent = $(this).parent();
        var x = $('input[name=x]').val();

        var lLeft = brandParent.width() / 2 - 110;
        var lTop = brandParent.height() / 2 - 9;
        if ((lTop + 19) > (brandParent.height())) lTop = 2;

        var bgspan = $('<span>', {
            id: "loading",
            class: "loading"
        })  .css('position', 'absolute')
            .css('left',lLeft + 'px')
            .css('top', lTop  + 'px');
        bgspan.html('<img src="./images/spinner.gif" alt="loading"/>');
        brandParent.append(bgspan).css('position', 'relative').css('opacity', 0.4);

        $.post(postUrl, { bid: bid, x: x }, function(data) {
            if(data.error != ''){
                alert(data.error);
            }else{
                var opts = '';
                $.each(data.autos, function(index, value) {
                    opts = opts + '<option value="'+index+'">'+value+'</option>';
                });
                slave.html(opts);
                if (data.disabled == 0){
                    slave.attr('disabled', null);
                }
            }
            bgspan.remove();
            brandParent.css('opacity', 1);
        }, "json").fail(function(){
            bgspan.remove();
            brandParent.css('opacity', 1);
            alert('Произошла ошибка во время выполнения. Попробуйте позже.');
        });

    });


    $('#qNavAuto').change(function(){
        var itemValue = parseInt($(this).val());
        if(itemValue < 1) return;

        var autoParent = $(this).parent();

        var lLeft = autoParent.width() / 2 - 110;
        var lTop = autoParent.height() / 2 - 9;
        if ((lTop + 19) > (autoParent.height())) lTop = 2;

        var bgspan = $('<span>', {
            id: "loading",
            class: "loading"
        })  .css('position', 'absolute')
            .css('left',lLeft + 'px')
            .css('top', lTop  + 'px');
        bgspan.html('<img src="./images/spinner.gif" alt="loading"/>');
        autoParent.append(bgspan).css('position', 'relative').css('opacity', 0.4);

        var type = $(this).attr('data-type');
        if(type == 'review'){
            window.location.href = 'avto2?m=reviews&a=model&mid='+itemValue;
            return
        }

        window.location.href = 'avto2?m=catalog&a=auto&aid='+itemValue;
    });

    $('#qNavGo').click(function(e){
        e.preventDefault();

        var itemType = $(this).attr('data-type');

        if(itemType == 'review'){
            var bid = parseInt($('#quickNavBrand').val());
        } else {
            var bid = parseInt($('#qNavBrand').val());
        }

        var aid = parseInt($('#qNavAuto').val());

        if(aid > 0){
            var autoParent = $('#qNavAuto').parent();
            var x = $('input[name=x]').val();

            var lLeft = autoParent.width() / 2 - 110;
            var lTop = autoParent.height() / 2 - 9;
            if ((lTop + 19) > (autoParent.height())) lTop = 2;

            var bgspan = $('<span>', {
                id: "loading",
                class: "loading"
            })  .css('position', 'absolute')
                .css('left',lLeft + 'px')
                .css('top', lTop  + 'px');
            bgspan.html('<img src="./images/spinner.gif" alt="loading"/>');
            autoParent.append(bgspan).css('position', 'relative').css('opacity', 0.4);

            if(itemType == 'review'){
                window.location.href = 'avto2?m=reviews&a=model&mid='+aid;
                return
            }

            window.location.href = 'avto2?m=catalog&a=auto&aid='+aid;
            return;
        }

        if(bid > 0){
            var brandParent = $('#qNavBrand').parent();
            var x = $('input[name=x]').val();

            var lLeft = brandParent.width() / 2 - 110;
            var lTop = brandParent.height() / 2 - 9;
            if ((lTop + 19) > (brandParent.height())) lTop = 2;

            var bgspan = $('<span>', {
                id: "loading",
                class: "loading"
            })  .css('position', 'absolute')
                .css('left',lLeft + 'px')
                .css('top', lTop  + 'px');
            bgspan.html('<img src="./images/spinner.gif" alt="loading"/>');
            brandParent.append(bgspan).css('position', 'relative').css('opacity', 0.4);

            if(itemType == 'review'){
                window.location.href = 'avto2?m=reviews&a=brand&bid='+bid;
                return
            }

            window.location.href = 'avto2?m=catalog&a=list&bid='+bid;
            return;
        }

    });

    $( ".add-compare-form" ).submit(function( e ) {
//        var data = $(this).serialize();
        var toCompareCount = compareCnt + $(this).find('input.compare[type="checkbox"]:checked').length;
        if(toCompareCount < 1){
            e.preventDefault();
            return false;
        }

        //убрать лишние параметры
        $('input.compare[type="checkbox"]:not(:checked)').attr('disabled', 'disabled');
    });
});
