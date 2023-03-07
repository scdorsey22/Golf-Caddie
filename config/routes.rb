Rails.application.routes.draw do
  resources :scorecards, only: [:index, :create, :destroy, :show]
  resources :tee_colors, only: [:index, :create, :destroy, :show]
  resources :courses, only: [:index, :create, :destroy, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
