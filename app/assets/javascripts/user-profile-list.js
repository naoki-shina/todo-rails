$(document).on('turbolinks:load', function() {
  $('.header__profile-list').hide();
  $('.user-profile').on('click', function() {
    $('.header__profile-list').toggle(100);
  });
});
