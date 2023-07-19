Rails.application.routes.draw do
  root to: "pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :links, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
