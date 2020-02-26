Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'pages#home'

  resources :users, only: [ :index, :show ]

  namespace :admin do
    resources :projects, only: [ :index, :new, :create, :edit, :update ]
  end
  namespace :designer do
    resources :projects, only: [ :index ]
  end
    resources :projects , only: [ :index, :show ] do
      resources :requests, only: [ :show, :index, :new, :create ]
  end
end
