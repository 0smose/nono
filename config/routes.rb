Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'static_pages#landing'
  get "static_pages/home"
  get 'static_pages/about_me'
  get 'static_pages/espace_pro'
  get 'static_pages/expo'
  devise_for :users
  resources :users, only: [:show] do
    resources :photos, only: [:create, :destroy]
    delete :delete_image_attachment
  end
  
  resources :users 
  resources :articles, only: [:show, :index]
  resources :categories
  resources :admins, only: [:index]
  resources :catalogues, only: [:index]

  resources :categories do
    resources :images
    delete :delete_image_attachment
  end

  resources :catalogues do
    resources :pictures
    # post 'test', to: 'images#create2', as: :mytest
    delete :delete_image_attachment
  end
    
  namespace :admins do
    root to: "admins#index"
    resources :articles
    resources :categories
    resources :catalogues
  end

end
