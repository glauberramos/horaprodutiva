$(document).ready(function() {
  $("nav a").anchorAnimate();
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
});