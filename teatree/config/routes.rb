Rails.application.routes.draw do
  devise_for :users
root 'teas#index' 
resources :users
resources :teas
resources :posting
resources :black, :only => [:index, :show] do
  resources :review, :only => [:new, :create]
end
resources :japanese, :only => [:index, :show] do
  resources :review, :only => [:new, :create]
end
resources :chinese, :only => [:index, :show] do
  resources :review, :only => [:new, :create]
end

end
