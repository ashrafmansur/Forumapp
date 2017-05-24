Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  resources :topics do
  	resources :comments
  end

  root "topics#index"
end
