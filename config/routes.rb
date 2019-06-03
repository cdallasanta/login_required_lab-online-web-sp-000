Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#login'
  resources :session, only: [:new, :create, :destroy]
  root 'application#homepage'

end
