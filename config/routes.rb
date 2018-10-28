Rails.application.routes.draw do
  root 'hello#prueba'

  resources :categories, except: [:show]
  resources :products
end
