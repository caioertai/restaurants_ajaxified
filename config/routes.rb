Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show ] do
    # /restaurants/1/reviews
    resources :reviews, only: [:create]
  end
  root to: 'restaurants#index'
end
