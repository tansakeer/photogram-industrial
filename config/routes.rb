Rails.application.routes.draw do
  root "photos#index"

  
  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  #get "user/:id" =>  "users/show", as: :user
  #resources :users, only: :show

  get ":username" => "users#show", as: :user
  get ":username/following" => "users#following", as: :user_following
  get ":username/followers" => "users#follower", as: :user_followers
  get ":username/feed" => "users#feed", as: :user_feed
  get ":username/liked" => "photos#liked", as: :liked_photos


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
