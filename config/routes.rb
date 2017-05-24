Rails.application.routes.draw do
  resources :topics do
  	resources :comments
  end

  root "topics#index"
end
