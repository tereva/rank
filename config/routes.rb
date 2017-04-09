Rails.application.routes.draw do
  resources :requetes
  resources :registres, only: [:create, :destroy]
  resources :sessions
  resources :sites do
  	resources :registres
  end
  get 'home' =>  'sites#index'  
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  
  root to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
