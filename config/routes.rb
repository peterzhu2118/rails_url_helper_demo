require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  root to: 'demo#index'

  authenticate :user, ->(_u) { false } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :demo, only: :index
end
