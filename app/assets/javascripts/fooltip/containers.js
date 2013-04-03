$(document).ready(function() {

  $('.fooltip-link-container').each(function() {
    $(this).children('a').attr('data-content', $(this).children('.content').html());
  });

  $('.fooltip-link').popover();

});
