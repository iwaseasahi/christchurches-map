source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# .envファイルを使用
gem 'dotenv-rails'
# 論理削除
gem 'kakurenbo-puti'
# rake
gem 'rake'
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
# 例外通知
gem 'exception_notification'
# Slack
gem 'slack-notifier'
# 画像アップロード
gem 'carrierwave', '>= 2.0.0.rc', '< 3.0'
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
gem 'redis-namespace'
gem 'sidekiq', '< 5'
gem 'sinatra', require: false
# 管理画面
gem 'administrate'
# ファイル名にdigestが付く問題を解決
gem 'non-stupid-digest-assets'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # デバッグ用
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  # テスト用
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
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
  # ファイル変更を検知してイベント実行
  gem 'guard'
  # guard で RSpec を実行
  gem 'guard-rspec', require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'launchy', '~> 2.4.2'
  gem 'selenium-webdriver'
  # テストカバレッジ
  gem 'simplecov', require: false
end

group :production, :staging do
  # Unicorn
  gem 'unicorn'
  # New Relic
  gem 'newrelic_rpm'
end
