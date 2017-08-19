$(document).on('turbolinks:load', function() {
  // フォトのアップロード
  $('***REMOVED***photo_file_name').on('change', function (e) {
    if (e.target.files[0].size > 0) {
      $(this).parents('form').submit();
      $('.loading').fadeIn();
    }
  });
});
