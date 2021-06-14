Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tenants, only: [:create, :index, :update, :destroy]
  resources :apartments, only: [:create, :index, :update, :destroy]
  resources :leases, only: [:index, :create, :destroy]
end
