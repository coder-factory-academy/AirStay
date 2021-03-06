Rails.application.routes.draw do
  resources :listings do
    resources :listing_provisions, controller: :listing_provisions, path: 'provisions'
    resources :messages, only: [:index, :create]
    resources :reviews
  end
  resources :trips, except: [:new]
  
  root 'home#index'
  get 'explore' => 'explore#index'
  post 'explore' => 'explore#index'

  devise_for :users
  resources :profiles, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
