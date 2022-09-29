Rails.application.routes.draw do
  root "dashboard#index"
  resources :products do
    member do
      get :new_movement
    end
  end
  # get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

end
