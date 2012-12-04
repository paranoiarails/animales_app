class AddNuevos2ToDiarios < ActiveRecord::Migration
  def change
    add_column :diarios, :nuevoI, :text

  end
end
