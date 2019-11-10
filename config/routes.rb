Rails.application.routes.draw do
  resources :posts
  namespace :api do
    resources :users, only: [:create, :index, :show]
    patch '/image/:id', to: 'users#update'
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/profile/:id', to: 'users#show'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
