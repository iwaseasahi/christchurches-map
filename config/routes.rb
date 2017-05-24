Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/contact' => 'homes#contact'
  resources :maps, only: :index do
    collection do
      get '/search' => 'maps#search'
    end
  end
end
