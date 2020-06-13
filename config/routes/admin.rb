require 'sidekiq/web'

# Sidekiqのダッシュボード
# Basic認証
Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == Rails.application.credentials.dig(:sidekiq, :dashboard_user) && password == Rails.application.credentials.dig(:sidekiq, :dashboard_password)
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
