class AddEspecieToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :especie_id, :integer

    add_column :animals, :edad, :integer

    add_column :animals, :zona_id, :integer

    add_column :animals, :veterinario, :text

  end
end


