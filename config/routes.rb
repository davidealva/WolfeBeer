Rails.application.routes.draw do

  get 'who_loves_wolfe', to: 'static_pages#who_loves_wolfe'
  resources :buyers, only: :index 
  root 'static_pages#index'

end
