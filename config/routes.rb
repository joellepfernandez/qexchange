Rails.application.routes.draw do
  root 'pages#home'

  get '/help' => 'pages#help', as: :help

  get '/about' => 'pages#about'

  get '/contact' => 'pages#contact'

  get '/terms_of_use' => 'pages#termsofuse'

  get '/privacy_policy' => 'pages#policy'

  get '/feedback' => 'pages#feedback'

  get '/safety' => 'pages#safety'

  get '/categories'=> 'pages#categories'

  get '/categories/furniture' => 'pages#furniture', as: :furniture

  get '/categories/freestuff' => 'pages#free_stuff', as: :free_stuff

  get '/categories/services' => 'pages#services', as: :services

  delete '/users/:id' => 'users#destroy', as: :destroy_user
  resources :users

  delete '/posts/:id' => 'posts#destroy', as: :destroy_post
  resources :posts do
    resources :comments
    post '/posts/:id' => 'posts#comment'
  end

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]
end
