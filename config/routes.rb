Rails.application.routes.draw do
  root 'chatroom#index'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
