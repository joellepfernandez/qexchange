Rails.application.routes.draw do
  root 'pages#home'

  get '/search' => 'pages#search', as: :search

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

  get '/categories/meetups' => 'pages#meet_ups', as: :meet_ups

  get '/categories/jobs' => 'pages#jobs', as: :jobs

  get '/categories/housing' => 'pages#housing', as: :housing

  delete '/users/:id' => 'users#destroy', as: :destroy_user
  resources :users

  delete '/posts/:id' => 'posts#destroy', as: :destroy_post
  resources :posts do
    resources :comments
  end
  post '/posts/:id' => 'posts#comment'

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]
end
