class AddPefilidToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :perfil_id, :integer

  end
end
