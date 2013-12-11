$(document).ready(function() {
  $('.gift-button').click(function(){

    // figure out if we're open or closed
    $el = $(this).parent().parent().children('.interests');
    $button = $(this)

    // if closed
    if($el.is(':visible')) {
      $el.slideUp(function(){
        $button.text("+");
      });
    } else {
      $el.slideDown(function(){
        console.log(this);
        $button.text("-");
      });
    }

  });
});




    // $(this).parent().parent().children('.interests').children("#plus").text("-")


// $(document).ready(function() {
//   $(".gift-button").on('click',function() {
//     $(this).parent().parent().children('.interests').slideToggle()

//     $('.interests').slideDown(
//       function(){
//         $("#plus").text("-")
//       }
//     );

//     $(".interests").slideUp(
//       function(){
//         $("#plus").text("+")
//       }
//     );
//   });
// });