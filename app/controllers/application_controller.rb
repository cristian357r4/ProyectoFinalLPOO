# frozen_string_literal: true
class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    if session[:persona_id]
      @current_user ||= Nutriologo.find(session[:persona_id])
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

end
