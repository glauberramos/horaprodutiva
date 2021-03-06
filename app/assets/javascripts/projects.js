$(document).ready(function() {
  // scrollspy
  $('#menu-links').scrollspy();

  $(window).scroll(function() {
    if ($(this).scrollTop() > 43) {
      $('#menu').css('position', 'fixed').css('top', 0);
      $('#menu').css('opacity', '0.9');
      $('#project-information').css('margin-top', 43);
    } else {
      $('#menu').css('position', 'relative');
      $('#menu').css('opacity', '1');
      $('#project-information').css('margin-top', 0);
    }
  });

  $(".anchor-link").click(function(event) {
    event.preventDefault(event);
    var session = $(this).attr('href');
    var sessionPosition = $(session).offset().top;

    $('body,html').animate({ scrollTop: sessionPosition }, 500, function() {
        window.location.hash = session;
    });
  });

  // jquery-tokeninput
  var tag_field_id = '#project_tag_tokens';

  $(tag_field_id).tokenInput("/tags.json", {
    crossDomain: false,
    allowFreeTagging: true,
    tokenValue: 'name',
    theme: 'facebook',
    prepopulate: $(tag_field_id).data('pre')
  });

  $('#project_name').change(function () {
    $('.name.project').text($('#project_name').val());
  });
});