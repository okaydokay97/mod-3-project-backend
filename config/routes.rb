Rails.application.routes.draw do
  resources :rejects #create
  resources :matches  #create, delete
  resources :users #index, update, create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
