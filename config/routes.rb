Rails.application.routes.draw do
  devise_for :users
  get 'toppage/index'
  # root "toppage#index"
  root 'items#index'
  resources :items
end
