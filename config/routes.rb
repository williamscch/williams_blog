Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index new create show] do
      resources :comments, only: [:create]
      resources :likes, only: [:create]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
