$(document).on('turbolinks:load', function() {
// user profile list hide and show
  $('.header__profile-list').hide();
  $('.user-profile').on('click', function() {
    $('.header__profile-list').toggle(100);
  });
// create board list hide and show
  $('.header__create-board').hide();
  $('.add-boader').on('click', function() {
    $('.header__create-board').toggle(100);
  });
});
