Rails.application.routes.draw do
  # get 'superpowers/show'
  # get 'superpowers/index'

  root to: 'pages#home'
  devise_for :users
  resources :superpowers do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:show, :destroy]

  get "/dashboard", to: "dashboards#show", as: "dashboard"
  patch "/bookings/:id", to: "bookings#accept_booking", as: "/accept"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
