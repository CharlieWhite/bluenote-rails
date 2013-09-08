BluenoteRails::Application.routes.draw do
  resources :notes

  devise_for :users
  resources :users

  namespace :api do
  	resources :notes
  end

  root :to => "notes#index"
end
