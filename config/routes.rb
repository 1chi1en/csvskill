Rails.application.routes.draw do
  root to: 'shoppings#index'
  resources :shoppings do
    collection { post :import }
  end
end
