Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :users, only: :show #マイページへ
  resources :products do
    resources :reviews
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
