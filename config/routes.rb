Rails.application.routes.draw do

  resources :plansuplementos
  resources :suplementos
  resources :pacientes
  resources :dietas
  resources :comidas
  resources :subalimentos
  resources :alimentos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  primer parametro como lo encontramos en la aplicacion segundo parametro: (home_controller) home#login este
  # parametro se agrega como funcion en el controller
  #resources :personas, :pacientes, :nutriologos

  #es posible hacer esta peticion por que no se nombra un metodo de peticion http
  # como en las rutas posteriores [put, patch, delete, pos, get]
  # directamente hace referencia a la vista
  # por default imprime esto
  # root GET    /
  #             home#index
  root :to => 'home#index'

  #estilo rutas que puede manera rails de forma autonoma no se pone el alias deben nombrarse los metodos
  # con los nombre por convencio asi es posible que rails identifique autoaticamente el que se tiene que
  # usar ademas del metodo que se define al principio [post, get, put, delete]
  #                 [controlador_en_plurarl]#[metodo]
  get 'nutriologo', to: 'nutriologos#index' #nutriologos_path
  match 'registrarse', to: 'nutriologos#registrarse', via: :get, :as => :registrar_nutriologo
  match 'registrarse/nuevo', to: 'nutriologos#crear', via: :post, :as => :guardar_nutriologo
  match 'nutriologo/:id/editar', to: 'nutriologos#editar', via: :get, :as => :editar_nutriologo
  match 'nutriologo/update', to: 'nutriologos#update', via: :post, :as => :update_nutriologo
  #en caso de agregar mas con login, en el form o donde se login path se puede especificar el methodo que se usara
  # match 'login' => 'sessions#new', via: :get, :as => :crear_sesion
  get 'login', to: 'sessions#new' #login_path incluye hambos
  match 'login' => 'sessions#create', via: :post
  # match 'logout' => 'sessions#destroy', via: :delete
  delete 'logout', to: 'sessions#destroy'

  #seccion de paciente


  #match "/validar_usuario" => "persononas#validar_usuario", via: :post, :as => :validar_usuario


end
