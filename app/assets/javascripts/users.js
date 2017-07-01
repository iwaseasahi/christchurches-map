$(function() {
  $('#user_icon').on('change', function (e) {
    if (e.target.files[0].size > 0) {
      $(this).parents('form').submit();
    }
  });
});
