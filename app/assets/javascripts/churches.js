$(function() {
  // コメント箇所へのスクロール
  $('.comment-counts-custom').click(function() {
    var id = $(this).attr('href');
    var position = $(id).offset().top;
    $('html, body').animate({'scrollTop': position}, 'slow');
  });

  // トップ画像のアップロード
  $('#church_top_image').on('change', function (e) {
    if (e.target.files[0].size > 0) {
      $(this).parents('form').submit();
      $('.loading').fadeIn();
    }
  });
});
