Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  resources :books, only:[:create, :index, :show, :edit, :update, :destroy]do
 end

  resources :users, only: [:index, :show, :edit, :update]
 end