require 'sidekiq/web'

# Sidekiqのダッシュボード
# Basic認証
Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == ENV['SIDEKIQ_DASHBOARD_USER'] && password == ENV['SIDEKIQ_DASHBOARD_PASSWORD']
end
mount Sidekiq::Web, at: '/sidekiq'

namespace :admin do
  resources :users
  resources :churches
  resources :comments
  resources :groups
  resources :likes
  resources :prefectures

  root to: 'users#index'
end
