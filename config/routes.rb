Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :destroy ] do
    # /restaurants/1/reviews
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:destroy]

  root to: 'restaurants#index'
end
