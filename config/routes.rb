Rails.application.routes.draw do
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/delete'
  # get 'categories/edit'
  resources :tasks do
    member do
      get :delete
    end
  end
  root 'main#index'
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
  match 'about', to: 'main#about', via: :get
  # Defines the root path route ("/")
  # root "articles#index"
end
