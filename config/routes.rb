Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  root   'static_pages#home'
  get    '/help',       to: 'static_pages#help'
  get    '/about',      to: 'static_pages#about'
  get    '/contact',    to: 'static_pages#contact'
  get    '/signup',     to: 'users#new'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  get    '/book',       to: 'bookings#new'
  post   '/book',       to: 'bookings#create'
  get    '/feed',       to: 'feedbacks#new'
  post   '/feed',       to: 'feedbacks#create'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :services
  resources :partners do
    resources :reviews
  end
  resources :bookings
  resources :feedbacks
end