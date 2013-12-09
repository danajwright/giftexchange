// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap

//= require_tree .

//WAIT FOR DOM TO LOAD BEFORE ATTACHING EVENT LISTENERS

$(document).ready(function() {
  $(".member-yes-radio").on('click',function() {
    $(this).parent().children('.member-yes-response').slideDown("600")
    $(this).parent().children('.member-no-response').slideUp("600")
  });

  $(".member-no-radio").on('click',function() {
    $(this).parent().children('.member-no-response').slideDown("600")
    $(this).parent().children('.member-yes-response').slideUp("600")
  });

  $(".dependent-yes-radio").on('click',function() {
    $(this).parent().children('.dependent-yes-response').slideDown("600")
    $(this).parent().children('.dependent-no-response').slideUp("600")
  });

  $(".dependent-no-radio").on('click',function() {
    $(this).parent().children('.dependent-no-response').slideDown("600")
    $(this).parent().children('.dependent-yes-response').slideUp("600")
  });

});

