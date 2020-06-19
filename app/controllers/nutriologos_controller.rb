class NutriologosController < ApplicationController
  #estos datos pertenecen a  una persona
  def new
    @nutriologo = Nutriologo.new
    @nutriologo.build_persona
  end

  def crear
    @nutriologo = Nutriologo.new nutriogolo_params
    respond_to do |format|
      if @nutriologo.save
        format.html { redirect_to root_path, notice: 'Nutriologo registrado' }
      else
        format.html { redirect_to home_login_path, notice: 'No se registro' }
      end

    end

  end

  private
  def nutriogolo_params
    params.require(:nutriologo).permit(:cedula_profesional, :login, :password ,
                                       persona_attributes: [:nombre,:a_paterno,:a_materno,:sexo,:telefono,:correo])
  end

end
