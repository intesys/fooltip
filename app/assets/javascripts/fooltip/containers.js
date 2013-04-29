$(document).ready(function() {

  $('.fooltip-link-container').each(function() {
    $(this).children('a').attr('data-content', $(this).children('.content').html());
    $(this).children('a').attr('data-original-title', $(this).children('.title').html());
  });

  $('.fooltip-link').popover();

  $('.popover .close').live('click', function() {
    id = $(this).closest('.popover').find('.fooltip-popup').attr('data-fooltip-link-id');
    $('#' + id).popover('hide');
  });

});
