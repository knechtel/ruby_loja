  class SessionsController < ApplicationController
    before_action only: %i[new create]
    def create
      usuario = Usuario.find_by(login: params[:login], senha: params[:senha])
      if !usuario.blank? && usuario.senha == params[:senha] && usuario.login == params[:login]
        session[:usuario_id] = usuario.id
        redirect_to root_path, notice: "Logado com sucesso"
      else
        flash[:alert] = "Email ou senha inválidos"
        render :new
      end
    end

    def destroy
      session[:usuario_id] = nil
      redirect_to login_path, notice: "Deslogado"
    end


    def require_login
      unless usuario_logado?
        redirect_to login_path, alert: "Você precisa estar logado"
      end
    end
  end
