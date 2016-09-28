Rails.application.routes.draw do
  resources :users
  resources :products
  get 'login' => 'sessions#new', as: :sessions
  post '/login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'session' => 'sessions#current_session'
  get 'register' => 'users#new'
  get 'created_user' => 'users#created_user'
  get 'merchant_account' => 'users#merchant_account'
  get 'farmer_account' => 'users#farmer_account'
  post 'farmer_account' => 'users#save_farmer_product'
  post 'merchant_account' => 'users#search_merchant_product'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
