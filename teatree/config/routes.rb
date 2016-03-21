Rails.application.routes.draw do
  devise_for :users
root 'teas#index' 
resources :users
resources :teas
resources :posting
resources :black, :only => [:index, :show]
end
