Rails.application.routes.draw do
  root 'rooms#show'

  mount ActionCable.server => '/cable'

  resources :boards

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }



end