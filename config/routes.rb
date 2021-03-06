
Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  root "pages#index"
  get "/pages/:page", to: "pages#show"

  resources :feed_backs, only: [:new, :create]
end