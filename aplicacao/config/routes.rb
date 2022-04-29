# frozen_string_literal: true

Rails.application.routes.draw do
  resources :livros
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'static_pages#home'
  root to: 'livros#index'
end
