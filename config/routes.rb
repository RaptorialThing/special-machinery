Rails.application.routes.draw do
  get 'distributor/index'
  get 'advertiser/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/jobs" , to: "jobs#index"
  get "/", to: "rails/welcome#index"
  get "/advertiser", to: "advertiser#index"
  get "/distributor", to: "distributor#index"
end