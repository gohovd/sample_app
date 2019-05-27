# Rails route names convention says to use _path,
# unless you are redirecting, in which case use _url
#
# Using the pattern: get '/page', to: 'static_pages#page'
# creates two named routed: (1) page_path, and (2) page_url
#

Rails.application.routes.draw do
  root 'static_pages#home'
  
  get '/about',   to: 'static_pages#about'
  get '/help',    to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'

  resources :users
end
