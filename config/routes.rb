Rails.application.routes.draw do

  get 'nutriologos/index', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  primer parametro como lo encontramos en la aplicacion segundo parametro: (home_controller) home#login este
  # parametro se agrega como funcion en el controller
  root 'home#login'

end
