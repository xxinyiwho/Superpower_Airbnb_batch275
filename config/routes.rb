Rails.application.routes.draw do
  get 'superpowers/show'
  get 'superpowers/index'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
