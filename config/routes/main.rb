root to: 'homes#index'

devise_for :users, controllers: {
  registrations: 'users/registrations',
  sessions: 'users/sessions'
}

resources :users, only: %i[show] do
  scope module: :users do
    resource :upload_icon, only: :create
  end
end

resources :contacts, only: :index

resources :like_rankings, only: :index

resources :maps, only: :index

namespace :maps do
  resources :search, only: :index
  resources :search_from_top, only: :index
end

namespace :churches do
  resource :modal, only: :show
end

resources :churches, except: %i[index] do
  scope module: :churches do
    resource :upload_top_image, only: :create
    resource :likes, only: %i[create destroy]
    resources :comments, only: %i[create edit update destroy]
    resources :photos, only: %i[index create destroy]
  end
end
