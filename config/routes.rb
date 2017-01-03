Rails.application.routes.draw do
  get 'favorite_posts/create'

  delete '/posts/:id'=> 'favorite_posts#destroy', as: :destroy_favorite_post

  get 'favorite_posts/:id' => 'favorite_posts#set_post', as: :favorite_post

  root 'pages#home'

  get '/search' => 'pages#search', as: :search

  get '/help' => 'pages#help', as: :help

  get '/about' => 'pages#about'

  get '/contact' => 'pages#contact'

  get '/terms_of_use' => 'pages#termsofuse'

  get '/privacy_policy' => 'pages#policy'

  get '/feedback' => 'pages#feedback'

  get '/safety' => 'pages#safety'

  get '/chicago' => 'pages#chicago', as: :chicago

  get '/losangeles' => 'pages#los_angeles', as: :los_angeles

  get '/sanfrancisco' => 'pages#san_francisco', as: :san_francisco

  get '/newyorkcity' => 'pages#new_york_city', as: :new_york_city

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

  resources :favorite_posts, only: [:create, :destroy]
end
