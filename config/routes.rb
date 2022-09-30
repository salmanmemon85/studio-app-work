Rails.application.routes.draw do
  resources :videos do
    resources :comments
    end
  devise_for :users
  root "home#index"
end
