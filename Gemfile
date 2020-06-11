source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "***REMOVED***{repo_name}/***REMOVED***{repo_name}" unless repo_name.include?("/")
  "https://github.com/***REMOVED***{repo_name}.git"
end

***REMOVED*** Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
***REMOVED*** Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.6'
***REMOVED*** Use Puma as the app server
gem 'puma'
***REMOVED*** Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
***REMOVED*** Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0.0'
***REMOVED*** Use jquery as the JavaScript library
gem 'jquery-rails'
***REMOVED*** Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
***REMOVED*** Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
***REMOVED*** Use Active Storage variant
***REMOVED*** gem 'image_processing', '~> 1.2'
***REMOVED*** Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
***REMOVED*** .envファイルを使用
gem 'dotenv-rails'
***REMOVED*** rake
gem 'rake'
***REMOVED*** font-awesome
gem 'font-awesome-rails'
***REMOVED*** google-map
gem 'gmaps4rails'
***REMOVED*** 検索用
gem 'ransack'
***REMOVED*** Googleアナリティクス
gem 'google-analytics-rails'
***REMOVED*** サイトマップ
gem 'sitemap_generator'
***REMOVED*** ユーザーログイン
gem 'devise'
***REMOVED*** 開発環境をYAMLファイルで管理
gem 'config'
***REMOVED*** 例外通知
gem 'exception_notification'
***REMOVED*** Slack
gem 'slack-notifier'
***REMOVED*** 画像アップロード
gem 'carrierwave', '~> 2.0'
***REMOVED*** 画像トリミング
gem 'rmagick'
***REMOVED*** S3にアップロードを簡単にするライブラリ
gem 'fog-aws'
***REMOVED*** 住所から緯度経度を算出
gem 'geocoder'
***REMOVED*** 変更履歴を残す
gem 'paper_trail'
***REMOVED*** 非同期処理
gem 'redis'
gem 'redis-namespace'
gem 'sidekiq', '< 6'
gem 'sinatra', require: false
***REMOVED*** 管理画面
gem 'administrate'
***REMOVED*** ファイル名にdigestが付く問題を解決
gem 'non-stupid-digest-assets'
***REMOVED*** decorator
gem 'active_decorator'

group :development, :test do
  ***REMOVED*** Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  ***REMOVED*** デバッグ用
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  ***REMOVED*** テスト用
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'faker'
end

group :development do
  ***REMOVED*** Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console'
  ***REMOVED*** Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  ***REMOVED*** コーディングスタイル
  gem 'rubocop', require: false
  gem 'rubocop-faker', require: false
  ***REMOVED*** capistrano関連
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-sidekiq'
  gem 'capistrano3-unicorn'
  ***REMOVED*** ファイル変更を検知してイベント実行
  gem 'guard'
  ***REMOVED*** guard で RSpec を実行
  gem 'guard-rspec', require: false
  ***REMOVED*** Preview mail
  gem 'letter_opener_web'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '~> 1.8.5'
  gem 'launchy', '~> 2.5.0'
  gem 'selenium-webdriver'
  ***REMOVED*** テストカバレッジ
  gem 'simplecov', require: false
end

group :production, :staging do
  ***REMOVED*** Unicorn
  gem 'unicorn'
  ***REMOVED*** New Relic
  gem 'newrelic_rpm'
end
