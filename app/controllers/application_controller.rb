class ApplicationController < ActionController::Base
  def current_usuario
    @current_usuario = Usuario.find_by(id: session[:usuario_id])
  end

  def usuario_logado?
    current_usuario.present?
  end

  def require_login
    unless usuario_logado?
      redirect_to "/login", alert: "Você precisa estar logado"
    end
  end

  helper_method :current_usuario, :usuario_logado?
end
