$(document).on('turbolinks:load', function() {
// hide post todo card
  $('.todo-card-new').hide();
// show post todo card
  $('.todo-btn').on('click', function(e) {
    $('.todo-card-new').show();
// textarea auto resize
    autosize(document.querySelectorAll('textarea'));
  });
});
