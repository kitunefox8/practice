Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  
  resources :products, only: [:index, :show, :new, :create] do
    collection do
      # patch   '/:id/edit'  => 'products#edit'
      get '/buy/:id'  => 'products#buy'
      get '/buyer/:id' => 'products#buyer'
      # 'buy'
      # get 'show'
      # get 'show2'
      get 'session5'
    end
  end
  resources :categories, onry: [:new, :create]
  resources :image_tests, only: [:index, :create]

end
