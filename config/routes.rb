Rails.application.routes.draw do

  resources :account, :controller => 'account'
  resources :brands, :controller => 'brands'
  resources :visitors, :controller => 'visitors'
  root 'welcome#index'
  resources :welcome, only: [:create]

end
