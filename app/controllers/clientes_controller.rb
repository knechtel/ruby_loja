class ClientesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    cliente = Cliente.new(cliente_params)
     if cliente.save
      render json: cliente, status: :created
     else
      render json: { errors: cliente.errors.full_messages }, status: :unprocessable_entity
     end
  end
  private
  def cliente_params
    params.require(:cliente).permit(:nome, :email, :telefone, :cpf)
  end
end
