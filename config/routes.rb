Rails.application.routes.draw do
  resources :rejects
  resources :matches
  resources :users
  post '/signup', to: 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
