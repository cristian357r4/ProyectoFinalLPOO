# frozen_string_literal: true
class ApplicationController < ActionController::Base
  # before_action :require_user
  helper_method :current_user, :require_user, :logged_in?


  def current_user
    if session[:persona_id]
      # puede ser posible solucion a el id paciente que no se muestra
      @current_persona ||= Persona.where(id: session[:persona_id]).first
      @nutriologo ||= Nutriologo.where(persona_id: session[:persona_id]).first
    end
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
      flash[:danger] = 'Debes Iniciar sesion'
      redirect_to root_path
    end
  end

  def disable_nav
    @disable_nav = true
  end
end
