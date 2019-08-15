Rails.application.routes.draw do
  root 'chatters#index'
  resources :chatters
  post '/', to: 'chatters#create'
end
