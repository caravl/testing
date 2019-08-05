Rails.application.routes.draw do

  resources :account, :controller => 'account'
  resources :brands, :controller => 'brands'
  root 'welcome#index'
  resources :welcome, only: [:create]

end
