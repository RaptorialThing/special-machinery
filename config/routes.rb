Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'banners#index'
  get 'banner/index'
  get 'distributor/index'
  get 'advertiser/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/jobs" , to: "jobs#index"
  get "/", to: "rails/welcome#index"
  get "/advertiser", to: "advertiser#index"
  get "/distributor", to: "distributor#index"
  resources :banners
end