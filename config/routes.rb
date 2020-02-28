Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'admin/projects/index', to: 'projects#index', as: :admin_root
  get 'designer/projects/index', to: 'projects#index', as: :designer_root

  root to: 'pages#home'

  resources :users, only: [ :index, :show ]

  namespace :admin do
    resources :projects, only: [ :index, :new, :create, :edit, :update ]
  end
  namespace :designer do
    resources :projects, only: [ :index ]
  end
    resources :projects , only: [ :index, :show ] do
      resources :requests, only: [ :new, :create ]
  end

  resources :requests, only: [ :show, :index, :update ]
end
