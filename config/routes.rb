# frozen_string_literal: true

Rails.application.routes.draw do
  resources :birds
  # get '/birds' => 'birds#index'
end
