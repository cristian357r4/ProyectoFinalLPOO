Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  primer parametro como lo encontramos en la aplicacion segundo parametro: (home_controller) home#login este
  # parametro se agrega como funcion en el controller
  #resources :personas, :pacientes, :nutriologos
  root to: 'home#index'
  match 'login' => 'sessions#new', via: :get, :as => :crear_sesion
  match 'login' => 'sessions#create', via: :post, :as => :iniciar_sesion
  match 'logout' => 'sessions#destroy', via: :delete, :as => :finalizar_sesion
  #match 'registarse' => 'nutriologos#new', via: :get, :as => :registrar_nutriologo
  #match '/nutriologos/create' => 'nutriologos#crear', via: :post, :as => :nuevo_nutriologo



  #match "/validar_usuario" => "persononas#validar_usuario", via: :post, :as => :validar_usuario


end
