# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#new'

  resources :users
end