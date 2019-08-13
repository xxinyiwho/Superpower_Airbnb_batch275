Rails.application.routes.draw do
  # get 'superpowers/show'
  # get 'superpowers/index'
  root to: 'superpowers#home'

  devise_for :users  do
    resources :bookings, only: [:new, :create]
  end

end
