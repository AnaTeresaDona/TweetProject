Rails.application.routes.draw do
  get 'signouts/index'
  devise_for :users, except: :create, path: '', path_names: { sign_in: 'login', sign_out: 'signed-out' }
  resources :tweets
  root to: 'tweets#index'
  get 'signed-out', to: 'signouts#index'
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
