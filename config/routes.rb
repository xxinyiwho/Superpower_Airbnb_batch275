Rails.application.routes.draw do
  # get 'superpowers/show'
  # get 'superpowers/index'
  root to: 'superpowers#index'
  devise_for :users
  resources :superpowers do
  resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
