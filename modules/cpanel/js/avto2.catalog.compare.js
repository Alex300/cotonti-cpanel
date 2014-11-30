/**
 * module Avto for Cotonti Siena
 *
 * @package Avto
 * @author Alex
 * @copyright (c) 2014 Portal30 Studio http://portal30.ru
 */
function new_sticky_relocate() {
    var window_top = $(window).scrollTop();
    var div_top = $('#compare-table').offset().top;
    var div_width = $('#compare-table').width();

    // position static

    if ((window_top + offset) > div_top) {
        $('#compare-header').addClass('stick').css({position: 'fixed', top: offsetTop}).width(div_width);
    } else {
        $('#compare-header').removeClass('stick').css('position', 'static');
    }
}

$(function() {
    $(window).scroll(new_sticky_relocate);
    new_sticky_relocate();

    // Диалог добавления к сравнению
    if($("#dlgCompareAdd").length > 0){
        $( "#dlgCompareAdd" ).dialog({
            title: 'Добавить к сравнению',
            autoOpen: false,
            show: "blind",
            hide: "blind",
            resizable: false,
            position: { my: "left top", at: "center bottom", of: $('#compare-add') },
            beforeClose: function( event, ui ) {
                $('#compareAddBrand').parent().removeClass('has-error');
                $('#compareAddAuto').parent().removeClass('has-error');
                $('#compareAddEqui').parent().removeClass('has-error');
            },
            buttons:[
                {text: 'Добавить',
                    click: function() {
                        var isOk = true;

                        var addBrand = $('#compareAddBrand');
                        if($(addBrand).val() < 1){
                            $(addBrand).parent().addClass('has-error');
                            isOk = false;
                        }

                        var addAuto = $('#compareAddAuto');
                        if($(addAuto).val() < 1){
                            $(addAuto).parent().addClass('has-error');
                            isOk = false;
                        }

                        var addEqui = $('#compareAddEqui');
                        if($(addEqui).val() < 1){
                            $(addEqui).parent().addClass('has-error');
                            isOk = false;
                        }
                        if(isOk){
                            addBrand.attr('disabled', 'disabled');
                            addAuto.attr('disabled', 'disabled');
                            $('#dlgCompareAddForm').submit()
                        }
                    }
                },
                {text: 'Отмена',
                    click: function() { $( "#dlgCompareAdd" ).dialog( "close" ); } }
            ]
        });

        $('#compare-add').click(function() {
            var isOpen = $( "#dlgCompareAdd" ).dialog( "isOpen" );
            if(isOpen){
                $( "#dlgCompareAdd" ).dialog( "close" );
            }else{
                $( "#dlgCompareAdd" ).dialog( "open" );
            }

            return false;
        });
    }
    // /Диалог добавления к сравнению

    $('#compareAddBrand').change(function(){

        $('#compareAddBrand').parent().removeClass('has-error');
        $('#compareAddAuto').html('<option value="0">- Выбрать модель -</option>').parent().removeClass('has-error');
        $('#compareAddEqui').html('<option value="0">- Выбрать комплектацию -</option>').parent().removeClass('has-error');

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

        $.post('index.php?e=avto2&m=catalog&a=axjGetAuto', { bid: bid, x: x }, function(data) {
            if(data.error != ''){
                alert(data.error);
            }else{
                var opts = '';
                $.each(data.autos, function(index, value) {
                    opts = opts + '<option value="'+index+'">'+value+'</option>';
                });
                $('#compareAddAuto').html(opts);
                if (data.disabled == 0){
                    $('#compareAddAuto').attr('disabled', null);
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

    $('#compareAddAuto').change(function(){

        $('#compareAddAuto').parent().removeClass('has-error');
        $('#compareAddEqui').html('<option value="0">- Выбрать комплектацию -</option>').parent().removeClass('has-error');

        var aid = $(this).val();
        if(aid == '' || aid == 0) return;

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

        $.post('index.php?e=avto2&m=catalog&a=axjGetEquipment', { aid: aid, x: x }, function(data) {
            if(data.error != ''){
                alert(data.error);
            }else{
                var opts = '';
                $.each(data.equis, function(index, value) {
                    opts = opts + '<option value="'+index+'">'+value+'</option>';
                });
                $('#compareAddEqui').html(opts);
                if (data.disabled == 0){
                    $('#compareAddEqui').attr('disabled', null);
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

    $('#compareAddEqui').change(function(){
        $(this).parent().removeClass('has-error');
    });
});