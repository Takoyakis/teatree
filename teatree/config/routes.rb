Rails.application.routes.draw do
  devise_for :users
root 'teas#index' 
resources :users
resources :teas
resources :posting
resources :black, :only => [:index, :show]
resources :japanese, :only => [:index, :show]
resources :chinese, :only => [:index, :show]
end
