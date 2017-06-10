Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/contact' => 'homes#contact'

  resources :maps, only: :index do
    collection do
      get '/search' => 'maps#search'
    end
  end

  resources :churches, except: %i(index)
end
