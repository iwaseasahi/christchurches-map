Rails.application.routes.draw do
  draw :admin
  draw :main

  # メールをブラウザで確認
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
