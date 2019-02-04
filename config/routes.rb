require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  authenticate :user, ->(_u) { false } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :demo, only: :index
end
