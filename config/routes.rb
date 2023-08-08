Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :pages, only: [:index, :show]
  resources :links, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#index"
end
