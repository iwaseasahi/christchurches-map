$(function() {
  // コメントが入力されたら投稿できるようにする
  var $comment = $('#comment_comment');
  var $submit = $('#comment-submit');
  if ($comment.val() == '') {
    $submit.attr('disabled', 'disabled');
  } else {
    $submit.removeAttr('disabled');
  }
  $comment.bind('keyup',function() {
    if($comment.val() == '') {
      $submit.attr('disabled', 'disabled');
    }
    else {
      $submit.removeAttr('disabled');
    }
  });
});
