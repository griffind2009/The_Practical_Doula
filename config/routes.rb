Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'clients#index'

resources :clients, shallow: true do
resources :basics, only: [:index, :new, :create]
resources :prenatals, only: [:index, :new, :create]
resources :births, only: [:index, :new, :create]
resources :postparta, only: [:index, :new, :create]
end
resources :basics
resources :prenatals
resources :births
resources :postparta
end
