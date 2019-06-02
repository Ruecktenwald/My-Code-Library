Rails.application.routes.draw do

  namespace :admin do
    resources :admin_users
    resources :users
    resources :categories
    resources :posts
    root to: "users#index"
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'users/profile/:name' => 'users#show', as: 'users_profile'
  root to: 'static#homepage'

  get 'categories/:top-four' => 'categories#top_four', as: 'top-four'
  resources :categories

  get 'search' => 'posts#search', :as => 'search_page'
  get 'category/:category' => 'posts#index', as: 'category_posts'
  get 'most-recent-posts/:recent' => 'posts#recent', :as => 'most_recent'
  resources :posts  
end
