Rails.application.routes.draw do
  resources :merchants
  get 'login' => 'sessions#new', as: :sessions
  post '/login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'session' => 'sessions#current_session'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
