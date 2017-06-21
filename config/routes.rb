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

  resources :churches, except: %i(index) do
    collection do
      get '/modal' => 'churches#modal'
    end
  end

  post 'like/:church_id' => 'likes#like', as: 'like'
  delete 'unlike/:church_id' => 'likes#unlike', as: 'unlike'

  post 'comment/:church_id' => 'comments#create', as: 'comment_create'
  delete 'comment/:church_id' => 'comments#destroy', as: 'comment_destroy'
end
