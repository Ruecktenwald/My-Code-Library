Rails.application.routes.draw do

	get "posts/filter/:scope" => 'posts#index', as: 'filtered_posts'
  resources :posts
  devise_for :users

  

root to: 'static#homepage'


end
