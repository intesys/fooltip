(function($, sr) {

    // debouncing function from John Hann
    // http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
    var debounce = function (func, threshold, execAsap) {
        var timeout;

        return function debounced () {
            var obj = this, args = arguments;
            function delayed () {
                if (!execAsap)
                    func.apply(obj, args);
                timeout = null;
            };

            if (timeout)
                clearTimeout(timeout);
            else if (execAsap)
                func.apply(obj, args);

            timeout = setTimeout(delayed, threshold || 100);
        };
    }
    // smartresize
    jQuery.fn[sr] = function(fn){ return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };

})(jQuery, 'smartresize');


$(document).ready(function() {

    $('.fooltip-link-container').each(function() {
        $(this).children('a').attr('data-content', $(this).children('.content').html());
        $(this).children('a').attr('data-original-title', $(this).children('.title').html());
    });

    $('.fooltip-link').popover();

    $('.fooltip-link').live('click', function() {
        $('.fooltip-link').not(this).popover('hide');
    });

    $('.popover .close').live('click', function() {
        id = $(this).closest('.popover').find('.fooltip-popup').attr('data-fooltip-link-id');
        $('.popover').hide();
        $('#' + id).popover('hide');
    });

    $(document).mouseup(function (e) {
        var container = $(".fooltip-link-container");
        if (!container.is(e.target) // if the target of the click isn't the container...
            && container.has(e.target).length === 0) // ... nor a descendant of the container
        {
            $('.popover').hide();
            $('.fooltip-link').popover('hide');
        }
    });

    $(window).smartresize(function() {
        $('.fooltip').resize();
    });

    $('.fooltip').resize(function() {
        $container = $(this).find('.fooltip-container');
        $container.height($container.find('img').height());
        width = $container.width();
        height = $container.height();
        $container.find('.fooltip-link').each(function() {
            new_left = width * $(this).attr('data-left') / 100;
            new_top = height * $(this).attr('data-top') / 100;
            $(this).css('left', new_left);
            $(this).css('top', new_top);
        });
    });
    $('.fooltip').resize();

});
