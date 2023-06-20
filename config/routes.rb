Rails.application.routes.draw do
  resources :crew_members, only: [:index, :show, :create]
  resources :productions, only: [:index, :show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
