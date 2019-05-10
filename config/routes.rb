Rails.application.routes.draw do

	get "posts/category/:category" => 'posts#index', as: 'category_posts'
  resources :posts
  devise_for :users

  root to: 'static#homepage'

end
