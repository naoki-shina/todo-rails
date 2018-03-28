$(document).on('turbolinks:load', function() {
  var html = `
  <div class = "todo-card">
    <input type="checkbox">
    <input type="date" class="limit-date">
    <input type="textfield" class="todo-text">
    <input type="submit" name="" value="追加" class="submit-btn">
    <i class="fa fa-times fa-lg"></i>
  </div>`

  $('.todo-btn').on('click', function(e) {
    $('.contents__cover__left').prepend(html);
  });
});
