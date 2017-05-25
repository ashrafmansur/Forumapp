Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :topics do
  	resources :comments
  end

  #namespace 'admin' do
  	#resources :topics
  #end

  root "topics#index"
end
