Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  get 'static_pages/courses'
  get 'static_pages/about_me'
  get 'static_pages/espace_pro'
  get 'static_pages/expo'
  devise_for :users
  resources :users, only: [:show] do
    resources :photos, only: [:create, :destroy]
    delete :delete_image_attachment
  end
resources :users 
resources :articles
resources :categories

resources :categories do
  resources :images
end
  

end
