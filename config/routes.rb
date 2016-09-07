Rails.application.routes.draw do
  
  root 'home#index'

  get 'picks', to: 'home#picks', as: 'picks'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  resources :profile


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
