Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get "about" ,to: "pages#about"
  resources :articlees do 
    # resources :posts

    member do 
      get :show_post
    end 
  end 
  resources :posts
  get "signup" , to:'users#new'
  # post 'users' , to: 'user#create'
  resources :users, expect: [:new]

  # get
  # resources :articlees , only: [:show, :index , :new , :create ,:edit, :update,:destroy]
end
