Rails.application.routes.draw do
devise_for :users, controllers: {
  registrations: 'users/registrations'
}

root 'teas#index'
resources :users
resources :teas
resources :postings do
  collection do
    get 'search'
  end
  resources :review, :only => [:new, :create]
end

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
