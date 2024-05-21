Rails.application.routes.draw do
  root "pages#index"
  get 'aboutus', to: 'pages#about_us'
  get 'contact', to: 'pages#contact_us'
  get 'dashboard' , to: 'users#index'
  get 'login', to: 'users#login_new'
  post 'login' , to: 'users#login'
  resources :users
  resources :enquiries, only: [:create , :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
