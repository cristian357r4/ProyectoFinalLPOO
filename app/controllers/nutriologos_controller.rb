class NutriologosController < ApplicationController
  # estos datos pertenecen a  una persona
  # esta funcion es llamada por el controlador : se expecifica aqui nutriologo#registrarse
  # y renderiza la pagina con el mismo nombre dentro de la carpeta vistas
  before_action :require_user, only: [:editar, :index]
  before_action :disable_nav, only: :registrarse
  before_action :set_persona, only: [:editar, :update, :destroy]


  def index
    @nut = Nutriologo.all
  end

  def registrarse
    @persona = Persona.new
    @persona.build_nutriologo
  end

  def crear
    @persona = Persona.new(persona_params)
    respond_to do |format|
      if @persona.save
        format.html { redirect_to root_path, notice: 'Nutriologo registrado' }
      else

        format.html { redirect_to registrar_nutriologo_path, notice: 'No se registro' }
      end
    end
  end

  def editar

  end

  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: 'Datos modificados correctamente' }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_persona
    @persona = Persona.find(params[:id])
  end

  def persona_params
    params.require(:persona).permit(:nombre, :a_paterno, :a_materno, :sexo, :telefono, :correo,
                                    nutriologo_attributes: [:id, :cedula_profesional, :login, :password])
  end

  # def require_user
  #   unless logged_in?
  #     flash[:danger] = 'Debes Iniciar sesion'
  #     redirect_to root_path
  #   end
  # end
end
