require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :churches
    resources :comments
    resources :groups
    resources :likes
    resources :prefectures

    root to: 'users#index'
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :users, only: %i[show] do
    member do
      put :upload_icon
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/contact'       => 'homes#contact'
  get '/likes_ranking' => 'homes#likes_ranking'

  resources :maps, only: :index do
    collection do
      get '/search'          => 'maps#search'
      get '/search_from_top' => 'maps#search_from_top'
    end
  end

  resources :churches, except: %i[index] do
    collection do
      get '/modal' => 'churches#modal'
    end
    member do
      put :upload_top_image
    end
    resources :photos, only: %i[index create destroy]
  end

  post 'like/:church_id'     => 'likes#like', as: 'like'
  delete 'unlike/:church_id' => 'likes#unlike', as: 'unlike'

  resources :comments, only: %i[edit update destroy] do
    collection do
      post '/:church_id' => 'comments#create', as: 'create'
    end
  end

  # Sidekiqのダッシュボード
  # Basic認証
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == ENV['SIDEKIQ_DASHBOARD_USER'] && password == ENV['SIDEKIQ_DASHBOARD_PASSWORD']
  end
  mount Sidekiq::Web, at: '/sidekiq'
end
