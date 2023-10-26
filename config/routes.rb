Rails.application.routes.draw do
  devise_for :users
  
  root to: "welcome#index"
  resources :users, only: [:index, :show, :new] do
    resources :categories, only: [:new, :create, :show, :index, :destroy]
    resources :payments, only: [:new, :create, :index, :show, :destroy]
  end
  get '/welcome', to: 'welcome#index', as: 'welcome_index'
  get 'categories', to: 'categories#index', as: 'categories_index'
  get 'payments', to: 'payments#index', as: 'payments_index'
end
