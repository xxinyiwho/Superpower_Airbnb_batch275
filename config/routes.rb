Rails.application.routes.draw do
  # get 'superpowers/show'
  # get 'superpowers/index'
  root to: 'pages#home'

  resources :superpowers, only: [ :index, :new, :create, :show, :destroy] do
    resources :bookings, only: [:new, :create]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
