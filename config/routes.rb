Rails.application.routes.draw do
  resources :book_shelves
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
