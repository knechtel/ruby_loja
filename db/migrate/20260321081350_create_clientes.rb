class CreateClientes < ActiveRecord::Migration[8.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
