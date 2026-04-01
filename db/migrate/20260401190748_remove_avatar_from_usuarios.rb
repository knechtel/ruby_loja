class RemoveAvatarFromUsuarios < ActiveRecord::Migration[8.1]
  def change
    remove_column :usuarios, :avatar, :string
  end
end
