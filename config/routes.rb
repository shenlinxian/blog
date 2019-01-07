SampleApp::Application.routes.draw do
  resources :passages

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :passages,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  #root to: 'static_pages#home'
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


  #get '/' => 'passages#index'

end