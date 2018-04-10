$(document).on('turbolinks:load', function() {
// hide post todo card
  $('.js-1, .js-2, .js-3').hide();
// show post todo card-1
  $('.list-1').on('click', function(e) {
    $('.js-1').show();
  });
// show post todo card-2
  $('.list-2').on('click', function(e) {
    $('.js-2').show();
  });
// show post todo card-3
  $('.list-3').on('click', function(e) {
    $('.js-3').show();
  });
// textarea auto resize
  autosize(document.querySelectorAll('textarea'));
});
