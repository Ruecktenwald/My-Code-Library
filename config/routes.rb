Rails.application.routes.draw do

  namespace :admin do
    resources :admin_users
    resources :users
    resources :categories
    resources :posts
    
    root to: "users#index"
  end

  get 'posts/recent' => 'posts#recent', :as => 'most_recent'
  get 'search' => 'posts#search', :as => 'search_page'
  get "posts/category/:category" => 'posts#index', as: 'category_posts'

  resources :posts
  resources :categories
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'users/profile/:name' => 'users#show', as: 'users_profile'
  root to: 'static#homepage'
end
