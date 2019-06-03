# Rails route names convention says to use _path,
# unless you are redirecting, in which case use _url
#
# Using the pattern: get '/page', to: 'static_pages#page'
# creates two named routed: (1) page_path, and (2) page_url
#

Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'static_pages#home'
  
  get     '/about',   to: 'static_pages#about'
  get     '/help',    to: 'static_pages#help'
  get     '/contact', to: 'static_pages#contact'
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
