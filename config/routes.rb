Rails.application.routes.draw do
  get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
end
