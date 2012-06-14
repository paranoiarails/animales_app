class CreatePerfilsZonas < ActiveRecord::Migration
  def change
    create_table :perfils_zonas, :id => false do |t|
      t.integer :perfil_id
      t.integer :zona_id

    end
  end
end
