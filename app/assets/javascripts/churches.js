// フォームの判定を共通処理化
function changeSubmitBtn($name, $prefecture_id, $address, $group_id, $submit) {
  if ($name.val() == '' || $prefecture_id.val() == '' || $address.val() == '' || $group_id.val() == '') {
    $submit.attr('disabled', 'disabled');
  } else {
    $submit.removeAttr('disabled');
  }
}

// 教会フォームのバリデーション
function validationChurchForm() {
  var $name = $('#church_name');
  var $prefecture_id = $('#church_prefecture_id');
  var $address = $('#church_address');
  var $group_id = $('#church_group_id');
  var $submit = $('#church-submit');
  changeSubmitBtn($name, $prefecture_id, $address, $group_id, $submit);
  $name.bind('keyup', function() {
    changeSubmitBtn($name, $prefecture_id, $address, $group_id, $submit);
  });
  $prefecture_id.on('change', function() {
    changeSubmitBtn($name, $prefecture_id, $address, $group_id, $submit);
  });
  $address.bind('keyup', function() {
    changeSubmitBtn($name, $prefecture_id, $address, $group_id, $submit);
  });
  $group_id.on('change', function() {
    changeSubmitBtn($name, $prefecture_id, $address, $group_id, $submit);
  });
}

$(document).on('turbolinks:load', function() {
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

  // 教会フォームのバリデーション
  validationChurchForm();

  // カルーセルの起動
  $('#carousel-example').carousel();
});
