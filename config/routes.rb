Rails.application.routes.draw do

  resources :account, :controller => 'account'
  resources :brands, :controller => 'brands'
  resources :workplaces, :controller => 'workplaces'
  root 'welcome#index'
  resources :welcome, only: [:create]

end
