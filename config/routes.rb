Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'groups#gro', as: 'home'
  get 'iv871' => 'iv871#index'
  patch 'iv871.:id', controller: 'iv871', action: :update
  delete 'iv871.:id', controller: 'iv871', action: :destroy
  resources :iv871

  # Defines the root path route ("/")
  # root "articles#index"
end
