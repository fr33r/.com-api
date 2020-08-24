# frozen_string_literal: true

Rails.application.routes.draw do
  resources :root, path: '/', only: [:index]
  resources :experiences, only: [:index]
  resources :projects, only: [:index]
  resources :contact_methods, only: [:index]
end
