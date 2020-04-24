Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
  
  get 'search' => 'search#index'
  get 'about' => 'pages#about' #creates about_path
  get 'support' => 'pages#support'
  get 'blog' => 'pages#blog'
  get 'press' => 'pages#press'
  get 'careers' => 'pages#careers'
  get 'privacy' => 'pages#privacy'
  get 'terms' => 'pages#terms'
  get 'faq' => 'pages#faq'

end
