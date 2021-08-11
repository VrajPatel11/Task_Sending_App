# frozen_string_literal: true

Rails.application.routes.draw do
  root 'statuses#new'
  resources :statuses
end
