Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :topics do
  	resources :comments
  end

  root "topics#index"
end
