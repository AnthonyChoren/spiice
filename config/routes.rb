Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
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
end
