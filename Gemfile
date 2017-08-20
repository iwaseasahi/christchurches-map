source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "***REMOVED***{repo_name}/***REMOVED***{repo_name}" unless repo_name.include?("/")
  "https://github.com/***REMOVED***{repo_name}.git"
end


***REMOVED*** Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
***REMOVED*** Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
***REMOVED*** Use Puma as the app server
gem 'puma', '~> 3.0'
***REMOVED*** Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
***REMOVED*** Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
***REMOVED*** Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
***REMOVED*** See https://github.com/rails/execjs***REMOVED***readme for more supported runtimes
***REMOVED*** gem 'therubyracer', platforms: :ruby

***REMOVED*** Use jquery as the JavaScript library
gem 'jquery-rails'
***REMOVED*** Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
***REMOVED*** Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
***REMOVED*** Use Redis adapter to run Action Cable in production
***REMOVED*** gem 'redis', '~> 3.0'
***REMOVED*** Use ActiveModel has_secure_password
***REMOVED*** gem 'bcrypt', '~> 3.1.7'

***REMOVED*** Use Capistrano for deployment
***REMOVED*** gem 'capistrano-rails', group: :development

***REMOVED*** .envファイルを使用
gem 'dotenv-rails'
***REMOVED*** 論理削除
gem 'kakurenbo-puti'
***REMOVED*** rake
gem 'rake', '< 11.0'
***REMOVED*** font-awesome
gem 'font-awesome-rails'
***REMOVED*** google-map
gem 'gmaps4rails'
***REMOVED*** 検索用
gem 'ransack', github: 'activerecord-hackery/ransack'
***REMOVED*** Googleアナリティクス
gem 'google-analytics-rails'
***REMOVED*** サイトマップ
gem 'sitemap_generator'
***REMOVED*** ユーザーログイン
gem 'devise'
***REMOVED*** 開発環境をYAMLファイルで管理
gem 'config'
***REMOVED*** 例外通知
gem 'exception_notification', github: 'smartinez87/exception_notification'
***REMOVED*** Slack
gem 'slack-notifier'
***REMOVED*** 画像アップロード
gem 'carrierwave'
***REMOVED*** 画像トリミング
gem 'rmagick'
***REMOVED*** S3にアップロードを簡単にするライブラリ
gem 'fog'
***REMOVED*** 住所から緯度経度を算出
gem 'geocoder'
***REMOVED*** 変更履歴を残す
gem 'paper_trail'
***REMOVED*** 非同期処理
gem 'sidekiq', '< 5'
gem 'redis'
gem 'redis-namespace'
gem 'sinatra', require: false
***REMOVED*** 管理画面
gem 'administrate'
***REMOVED*** ファイル名にdigestが付く問題を解決
gem 'non-stupid-digest-assets'

group :development, :test do
  ***REMOVED*** Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  ***REMOVED*** デバッグ用
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  ***REMOVED*** テスト用
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'rails-controller-testing'
end

group :development do
  ***REMOVED*** Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  ***REMOVED*** Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  ***REMOVED*** コーディングスタイル
  gem 'rubocop', require: false
  ***REMOVED*** capistrano関連
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
  gem 'capistrano-sidekiq', github: 'seuros/capistrano-sidekiq'
end

group :test do
  gem 'faker', '~> 1.4.3'
  gem 'capybara', '~> 2.4.3'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'launchy', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0 '
end

group :production, :staging do
  ***REMOVED*** Unicorn
  gem 'unicorn'
  ***REMOVED*** New Relic
  gem 'newrelic_rpm'
end

***REMOVED*** Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
