Rails.application.routes.draw do
  get 'messages/index'
  get 'conversations/index'
  devise_for :users
  root to: 'instruments#index'
  resources :instruments, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations, only: [:index, :create] do 
    resources :messages, only: [:index, :create]
  end
end