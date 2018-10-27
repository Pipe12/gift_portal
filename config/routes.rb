Rails.application.routes.draw do
  root 'hello#prueba'

  resources :categories, except: [:show]
end
