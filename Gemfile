source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.6'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# webpacker
gem 'webpacker'
# React
gem 'react-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# .envファイルを使用
gem 'dotenv-rails'
# rake
gem 'rake', '>= 2.1.4'
# font-awesome
gem 'font-awesome-rails'
# google-map
gem 'gmaps4rails'
# 検索用
gem 'ransack'
# Googleアナリティクス
gem 'google-analytics-rails'
# サイトマップ
gem 'sitemap_generator'
# ユーザーログイン
gem 'devise'
# 開発環境をYAMLファイルで管理
gem 'config'
# Slack
gem 'slack-notifier'
# 画像アップロード
gem 'carrierwave', '~> 2.1'
# 画像トリミング
gem 'rmagick'
# S3にアップロードを簡単にするライブラリ
gem 'fog-aws'
# 住所から緯度経度を算出
gem 'geocoder'
# 変更履歴を残す
gem 'paper_trail'
# 非同期処理
gem 'redis'
gem 'redis-namespace', git: 'https://github.com/resque/redis-namespace.git', branch: 'master'
gem 'sidekiq', '6.1.3'
gem 'sinatra', require: false
# 管理画面
gem 'administrate'
# ファイル名にdigestが付く問題を解決
gem 'non-stupid-digest-assets'
# decorator
gem 'active_decorator'
# テストカバレッジ計測
gem 'coveralls', require: false
# エラー管理
gem 'sentry-raven'
# rack
gem 'rack', '>= 2.1.4'
# nokogiri
gem 'nokogiri', '>= 1.11.0.rc4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.4'
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # コーディングスタイル
  gem 'rubocop', require: false
  gem 'rubocop-faker', require: false
  # capistrano関連
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-sidekiq'
  gem 'capistrano3-unicorn'
  gem 'capistrano-yarn'
  # ファイル変更を検知してイベント実行
  gem 'guard'
  # guard で RSpec を実行
  gem 'guard-rspec', require: false
  # Preview mail
  gem 'letter_opener_web'
  gem 'seed-fu'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'faker'
  gem 'capybara'
  gem 'selenium-webdriver', git: 'https://github.com/SeleniumHQ/selenium.git', branch: 'rb-3.x'
  # NOTE: https://github.com/lemurheavy/coveralls-ruby/issues/161
  gem 'simplecov', '< 0.18.0', require: false
end

group :production, :staging do
  gem 'unicorn'
  gem 'newrelic_rpm'
end
