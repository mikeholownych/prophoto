Prophoto::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :accounts
end
