Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'
  resources :flats do
    resources :rentings, only: [:create]
  end
  resources :rentings, only: [:index, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
