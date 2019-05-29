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
  get 'category/posts/:category' => 'posts#index', as: 'category_posts'
  get 'categories/:top-four' => 'categories#top_four', as: 'top-four'
  resources :categories
  resources :posts

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'users/profile/:name' => 'users#show', as: 'users_profile'
  root to: 'static#homepage'
end
