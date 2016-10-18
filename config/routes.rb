Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :clients, shallow: true do
resources :charts, only: [:index, :new, :create]
resources :basics, only: [:index, :new, :create]
resources :prenatals, only: [:index, :new, :create]
resources :births, only: [:index, :new, :create]
resources :postpartums, only: [:index, :new, :create]
end
resources :charts
resources :basics
resources :prenatals
resources :births
resources :postpartums
end
