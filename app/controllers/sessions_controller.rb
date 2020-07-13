class SessionsController < ApplicationController
  #debe Nombrarse en Plurar del nombe del modelo  y con la primera Mayuscula
  #conjunto de metodos nombrados en las rutas
  #  sessions#new
  before_action :disable_nav, only: :new
  def new

  end

  def create
    # render 'new'
    #params[:session][:login]       recupera el login "xazak"
    #debugger
    nutriologo = Nutriologo.find_by(login: params[:session][:login].downcase)
    if nutriologo&.authenticate(params[:session][:password])
      #session[:persona_id] = nutriologo.persona_id ------ esta variable guarda unicamente el persona_id=7  por ejemplo
      session[:persona_id] = nutriologo.persona_id
      flash[:success] = 'Bienvenido'
      #redirect_to nutriologos_path(nutriologo)   #verificar la direccio a la que redirecciona
      redirect_to nutriologo_path

    else
      flash[:danger] = 'Usuario o contraseña Incorrecta'
      #pagina que va a pintar en la aplicacion
      render root_path

    end
  end

  def destroy
    session[:persona_id] = nil
    flash[:success] = 'Vuelva Pronto'
    redirect_to root_path

  end

end