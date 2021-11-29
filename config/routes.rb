Rails.application.routes.draw do
  root 'chatroom#index'
  get 'signin', to: 'sessions#new'
end
