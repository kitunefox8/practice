Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "image_test#index"
  
  resources :product, only: [:index]
  resources :image_test, only: [:index, :create]

end
