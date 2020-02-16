Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'units#index'
  get '/units', to: 'units#index'
  delete '/units', to: 'units#delete_data'
  get '/units/load', to: 'units#load_data'
end
