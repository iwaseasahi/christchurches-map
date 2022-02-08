require 'sidekiq/web'

# Sidekiqのダッシュボード
# Basic認証
Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == Rails.application.credentials.dig(:sidekiq, :dashboard_user) && password == Rails.application.credentials.dig(:sidekiq, :dashboard_password)
end
mount Sidekiq::Web, at: '/sidekiq'

namespace :admin do
  resources :churches
  resources :comments, only: [:show]
  resources :groups
  resources :likes, only: [:show]
  resources :prefectures, only: [:index, :show]
  resources :users, only: [:index, :show]

  root to: 'users#index'
end
