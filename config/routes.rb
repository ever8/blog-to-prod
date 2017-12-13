Rails.application.routes.draw do
  root to: "pages#index"
  get 'images/new'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  

  resources :posts do
  	resources :postcomments
  end

  resources :photos do
    member do
      get :vote
    end
  end

  resources :images do
    member do
      get :voteforphoto
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
