Rails.application.routes.draw do
  resources :cities
  
  root 'cities#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
