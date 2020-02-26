Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'pages#home'

  namespace :admin do
    resources :projects, only: [ :index, :new, :create, :edit, :update ]
    resources :users
  end
  namespace :designer do
    resources :projects, only: [ :index ]
    resources :users
  end
    resources :projects , only: [ :index, :show ] do
      resources :requests, only: [ :show, :index, :new, :create ]
  end
end
