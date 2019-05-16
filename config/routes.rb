Rails.application.routes.draw do

  resources :enqueues
  get 'index' => 'home#index'
  root 'home#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'session#new', as: 'login'
  post 'login', to: 'session#create'
  get 'logout', to: 'session#destroy', as: 'logout'


  resources :users
  resources :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
