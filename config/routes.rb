Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :clients
resources :charts
resources :basics
resources :prenatals
resources :births
resources :postpartums

end
