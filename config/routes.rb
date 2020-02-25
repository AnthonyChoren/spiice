Rails.application.routes.draw do
  get 'request/index'
  get 'request/show'
  get 'request/new'
  get 'request/create'
  get 'request/edit'
  get 'request/update'
  get 'project/index'
  get 'project/show'
  get 'project/new'
  get 'project/create'
  get 'project/edit'
  get 'project/update'
  get 'user/index'
  get 'user/edit'
  get 'user/update'
  get 'user/show'
  devise_for :users
  root to: 'pages#home'

  namespace :admin do
    resources :projects, only: [ :index, :new, :create, :edit, :update ]
  end

  resources :projects , only: [ :index, :show ] do
    resources :requests, only: [ :show, :index, :new, :create, :edit, :update ]
  end

  resources :users, only: [ :show, :index, :new, :create, :edit, :update ] do
    resources :projects , only: [ :index ]
  end
end
