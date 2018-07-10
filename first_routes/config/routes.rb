Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users', to: 'users#index', as: 'users'
  post 'users', to: 'users#create', as: 'create'
  patch 'users/:id', to: 'users#update', as: 'update'
  delete 'users/:id', to: 'users#destroy', as: 'destroy'
  
end
