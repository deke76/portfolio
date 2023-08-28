Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :pages, only: [:index, :show]
  
  
  resources :settings, only: [:index]
  resources :details, only: [:index]
  resources :projects
  resources :contacts, only: [:index]
  resources :messages, only: [:new, :create]
  resources :links, only: [:index, :show]

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#index"
end
