Rails.application.routes.draw do

  resources :users, only: [:index, :show, :new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :bands
  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :notes

end
