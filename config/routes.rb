Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  namespace :admin do
    resources :projects, only: [ :index, :new, :create, :edit, :update ]
  end
  namespace :designer do
    resources :projects, only: [ :index ]
  end
    resources :projects , only: [ :index, :show ] do
      resources :requests, only: [ :show, :index, :new, :create, :edit, :update ]
  end


end
