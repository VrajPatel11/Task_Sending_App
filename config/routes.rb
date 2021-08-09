Rails.application.routes.draw do
  root 'statuses#new'
  resources :statuses
end
