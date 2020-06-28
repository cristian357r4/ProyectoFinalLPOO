class NutriologosController < ApplicationController
  #estos datos pertenecen a  una persona
  #esta funcion es llamada por el controlador : se expecifica aqui nutriologo#registrarse
  # y renderiza la pagina con el mismo nombre dentro de la carpeta vistas
  def registrarse
    @persona = Nutriologo.new
    @persona.build_persona
  end

  def crear
    @persona = Nutriologo.new(persona_params)
    respond_to do |format|
      if @persona.save
        format.html { redirect_to root_path, notice: 'Nutriologo registrado' }
      else
        format.html { redirect_to root_path, notice: 'No se registro' }
      end

    end

  end

  def index

  end

  private

  def persona_params
    params.require(:persona).permit(:nombre, :a_paterno, :a_materno, :sexo, :telefono, :correo,
                                    nutriologo_attributes: [:persona_id, :cedula_profesional, :login, :password])
  end

end
