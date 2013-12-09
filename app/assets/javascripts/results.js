

$(document).ready(function() {
  $(".gift-button").on('click',function() {
    $(this).parent().parent().parent().children('.interests').slideToggle()
  });

});