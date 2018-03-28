$(document).on('turbolinks:load', function() {
// todo card html
  var html = `
  <div class = "todo-card">
    <input type="checkbox">
    <input type="date" class="limit-date">
    <textarea class="todo-text"></textarea>
    <input type="submit" name="" value="追加" class="submit-btn">
    <a href="#">
      <i class="fa fa-times fa-lg"></i>
    </a>
  </div>`

// create todo card
  $('.todo-btn').on('click', function(e) {
    $('.contents__cover__left').prepend(html);
// textarea auto resize
    autosize(document.querySelectorAll('textarea'));

    $('.submit-btn .fa-times').hover(function() {
      $('.submit-btn, .fa-times').css('cursor', 'pointer');
      $('.submit-btn, .fa-times').css('opacity', '0.2');
    });
  });
});
