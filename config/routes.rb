Rails.application.routes.draw do
  get 'welcome/index'

  resources :connections

  root 'welcome#index'
end
