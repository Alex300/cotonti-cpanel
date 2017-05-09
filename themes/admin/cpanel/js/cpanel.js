/**
 * Cpanel Admin Theme
 * Load resources
 *
 * @package Cotonti
 * @subpackage  Admin
 */

$(function() {
    "use strict";

    /* === Init All === */

    /* ==== Scrollbar ==== */
    $('[data-scrollbar=true]').each( function() {
        var dataHeight = $(this).attr('data-height');
        dataHeight = (!dataHeight) ? $(this).height() : dataHeight;
        $(this).slimScroll({height: dataHeight, alwaysVisible: true});
    });
    /* ==== /Scrollbar ==== */

    /* ==== Sidebar ==== */
    $('.sidebar .nav > .has-sub > a > .opener').click(function(e) {
        e.preventDefault();
        e.stopPropagation();

        var a = $(this).closest('a'),
            target = a.next('.sub-menu'),
            otherMenu = '.sidebar .nav > li.has-sub > .sub-menu';

        $(otherMenu).not(target).slideUp(250);
        $(target).slideToggle(250);
    });

    $('.sidebar .nav > .has-sub > a').click(function(e) {
        var url = $(this).attr('href');
        if(url == '#' || url == '') {
            e.preventDefault();
            var target = $(this).next('.sub-menu'),
                otherMenu = '.sidebar .nav > li.has-sub > .sub-menu';

            $(otherMenu).not(target).slideUp(250);
            $(target).slideToggle(250);
        }
    });

    $('.sidebar .nav > .has-sub .sub-menu li.has-sub > a').click(function(e) {
        var url = $(this).attr('href');
        if(url == '#' || url == '') e.preventDefault();

        var target = $(this).next('.sub-menu');
        $(target).slideToggle(250);
    });

    // Mobile View
    $('.sidebar').click(function(e) {
        e.stopPropagation();
    });
    $(document).click(function(e) {
        if (!e.isPropagationStopped()) {
            if ($('#page-container').hasClass('sidebar-toggled')) {
                $('#page-container').removeClass('sidebar-toggled');
            }
        }
    });
    $('[data-click=sidebar-toggled]').click(function(e) {
        e.stopPropagation();
        var sidebarClass = 'sidebar-toggled';
        var targetContainer = '#page-container';
        if ($(targetContainer).hasClass(sidebarClass)) {
            $(targetContainer).removeClass(sidebarClass);
        } else {
            $(targetContainer).addClass(sidebarClass);
        }
    });


    // Minify / Expand
    $('[data-click=sidebar-minify]').click(function(e) {
        e.preventDefault();
        var sidebarClass = 'sidebar-minified';
        var targetContainer = '#page-container';
        if ($(targetContainer).hasClass(sidebarClass)) {
            $(targetContainer).removeClass(sidebarClass);
        } else {
            $(targetContainer).addClass(sidebarClass);
        }

        $(window).trigger('resize');
    });
    /* ==== sidebar ==== */

    /* ==== Scroll to Top ==== */
    $(document).scroll( function() {
        var totalScroll = $(document).scrollTop();

        if (totalScroll >= 200) {
            $('[data-click=scroll-top]').addClass('in');
        } else {
            $('[data-click=scroll-top]').removeClass('in');
        }
    });

    $('[data-click=scroll-top]').click(function(e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: $("body").offset().top
        }, 500);
    });
    /* ==== /Scroll to Top ==== */

    /* ==== Panel Control buttons ==== */
    // remove
    $('.panel-remove').hover(function() {
        $(this).tooltip({
            title: 'Remove',
            placement: 'bottom',
            trigger: 'hover',
            container: 'body'
        });
        $(this).tooltip('show');
    });
    $('.panel-remove').click(function(e) {
        e.preventDefault();
        $(this).closest('.panel').remove();
    });

    // collapse
    $('.panel-collapse').hover(function() {
        $(this).tooltip({
            title: 'Collapse / Expand',
            placement: 'bottom',
            trigger: 'hover',
            container: 'body'
        });
        $(this).tooltip('show');
    });
    $('.panel-collapse').click(function(e) {
        e.preventDefault();
        $(this).closest('.panel').find('.panel-body').slideToggle();
    });

    // reload
    $('.panel-reload').hover(function() {
        $(this).tooltip({
            title: 'Reload',
            placement: 'bottom',
            trigger: 'hover',
            container: 'body'
        });
        $(this).tooltip('show');
    });
    $('.panel-reload').click(function(e) {
        e.preventDefault();
        var target = $(this).closest('.panel');
        if (!$(target).hasClass('panel-loading')) {
            var targetBody = $(target).find('.panel-body');
            var spinnerHtml = '<div class="panel-loader"><span class="spinner-small"></span></div>';
            $(target).addClass('panel-loading');
            $(targetBody).prepend(spinnerHtml);
            setTimeout(function() {
                $(target).removeClass('panel-loading');
                $(target).find('.panel-loader').remove();
            }, 2000);
        }
    });

    // expand
    $('.panel-expand').hover(function() {
        $(this).tooltip({
            title: 'Expand / Compress',
            placement: 'bottom',
            trigger: 'hover',
            container: 'body'
        });
        $(this).tooltip('show');
    });
    $('.panel-expand').click(function(e) {
        e.preventDefault();
        var target = $(this).closest('.panel');

        if ($('body').hasClass('panel-expand') && $(target).hasClass('panel-expand')) {
            $('body, .panel').removeClass('panel-expand');
            $('.panel').removeAttr('style');
            $('[class*=col]').sortable('enable');
        } else {
            $('body').addClass('panel-expand');
            $(this).closest('.panel').addClass('panel-expand');
            $('[class*=col]').sortable('disable');
        }
        $(window).trigger('resize');
    });
    /* ==== /Panel Control buttons ==== */

    /* ==== Tooltip ==== */
    $('body').tooltip({
        selector: '[data-toggle="tooltip"]',
        container: 'body',
        title : function(){
            var source = $(this).attr('data-source');
            if(source != '' && source != undefined) {
                var tmp = $("#" + source);
                if (tmp.length > 0) return $("#" + source).html();
            };
            return false;
        }
    });
    // Fix for tooltip
    ajaxSuccessHandlers.push(function(msg){
        $('div.tooltip').remove();
    });
    $('[data-toggle="popover"]').popover();
    /* ==== /Tooltip ==== */

    /* ==== Select2 ==== */
    if((typeof jQuery.fn.select2) != 'undefined') {
        $("select.select2").select2({

        });
    }
    /* ==== /Select2 ==== */

    /* ==== Page Load - Fade in ==== */
    $(window).load(function() {
        $.when($('#page-loader').addClass('hide')).done(function() {
            $('#page-container').addClass('in');
        });
    });
    /* ==== Page Load - Fade in ==== */

    /* ==== Masonry: Cascading grid layout library ==== */
    $('.js-masonry').children('div').addClass('grid-item');
    /* ==== /Cascading grid layout library ==== */
});