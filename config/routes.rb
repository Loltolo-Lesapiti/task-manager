Rails.application.routes.draw do
  resources :tasks do
    member do
      get :delete
    end
  end
  root 'tasks#index'
  # get 'main/index'
  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Creating my own match route.
  resources :categories do
    member do
      get :delete
    end 
  end 
  match 'about', to: 'tasks#about', via: :get
  # Defines the root path route ("/")
  # root "articles#index"
end
