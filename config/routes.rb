Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'static_pages/index'
  root 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index]
    end
  end
end
