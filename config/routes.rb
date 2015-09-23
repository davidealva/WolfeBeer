Rails.application.routes.draw do

  get 'who_loves_wolfe', to: 'static_pages#who_loves_wolfe'
  get 'order', to: 'static_pages#order'
  resources :buyers, only: :index 
  root 'static_pages#index'

end
