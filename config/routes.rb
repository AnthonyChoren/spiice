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
<<<<<<< HEAD
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :projects, only: [ :index, :new, :create, :edit, :update ]
  end

  resources :projects , only: [ :index, :show ] do
    resources :requests, only: [ :show, :index, :new, :create, :edit, :update ]
  end

  resources :users, only: [ :show, :index, :new, :create, :edit, :update ] do
    resources :projects , only: [ :index ]
  end
>>>>>>> 068e2019cd6d47f661933b811389b23d251d6794
end
