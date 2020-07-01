Rails.application.routes.draw do
  get 'toppage/index'
  # root "toppage#index"
  root 'items#index'
  resources :items
end
