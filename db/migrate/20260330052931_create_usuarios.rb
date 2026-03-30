class CreateUsuarios < ActiveRecord::Migration[8.1]
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :nome
      t.string :senha
      t.string :avatar

      t.timestamps
    end
  end
end
