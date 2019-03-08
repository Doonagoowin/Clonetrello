Rails.application.routes.draw do

  devise_for :users
  
  resources :users do
    resources :boards
  end
  resources :boards do
    resources :lists
  end
  resources :lists do
    resources :cards
  end
end
