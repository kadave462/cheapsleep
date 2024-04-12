Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'rooms/index'
  get 'rooms/show'
  devise_for :users
  root to: "pages#home"

    resources :rooms, only: [:index, :show] do
      resources :bookings, only: [:new, :create]
    end
     resources :bookings, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
