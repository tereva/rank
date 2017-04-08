Rails.application.routes.draw do
  resources :requetes
  resources :registres, only: [:create, :destroy]
  root to: 'sites#index'

  resources :sites do
  	resources :registres
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
