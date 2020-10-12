# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
    get ':username/account', to: 'devise/registrations#edit'
    get 'reset_password', to: 'devise/passwords#new'
  end

  root 'main#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
